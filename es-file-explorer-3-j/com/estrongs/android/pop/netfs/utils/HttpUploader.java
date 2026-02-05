package com.estrongs.android.pop.netfs.utils;

import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;

/* loaded from: classes.dex */
public class HttpUploader {
    private String requestUrl;
    private HttpEntity uploadEntity = null;
    private HttpUploadListener l = null;
    private Object arg = null;
    private Thread d_thread = null;
    private boolean exit = false;
    public Object arg_1 = null;
    public Object arg_2 = null;
    private Object[] params = null;

    /* loaded from: classes.dex */
    public interface HttpUploadListener {
        void uploadCompleted(Object obj);

        void uploadError(Object obj, Throwable th);
    }

    public HttpUploader(String str) {
        this.requestUrl = null;
        this.requestUrl = str;
    }

    private boolean isReponseSucc(HttpResponse httpResponse) {
        return httpResponse.getStatusLine().getStatusCode() >= 200 && httpResponse.getStatusLine().getStatusCode() < 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void upload() {
        boolean z = false;
        try {
            HttpPost httpPost = new HttpPost(this.requestUrl);
            if (this.params != null) {
                for (int i = 0; i < this.params.length; i += 2) {
                    httpPost.setHeader(new StringBuilder().append(this.params[i]).toString(), new StringBuilder().append(this.params[i + 1]).toString());
                }
            }
            httpPost.setEntity(this.uploadEntity);
            HttpResponse execute = HttpUtils.getClient().execute(httpPost);
            if (this.exit) {
                Log.e("Uploader", "upload failed, user cancel");
                if (this.l != null) {
                    this.l.uploadError(this.arg, null);
                    return;
                }
                return;
            }
            if (isReponseSucc(execute)) {
                z = true;
            } else {
                Log.e("HttpUploader", "upload failed, server ret:" + execute.getStatusLine().getStatusCode());
            }
            HttpEntity entity = execute.getEntity();
            if (entity != null) {
                entity.consumeContent();
            }
            if (z) {
                if (this.l != null) {
                    this.l.uploadCompleted(this.arg);
                }
            } else if (this.l != null) {
                this.l.uploadError(this.arg, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (this.l != null) {
                this.l.uploadError(this.arg, e);
            }
        }
    }

    public void setHttpParams(Object[] objArr) {
        this.params = objArr;
    }

    public void setNotifyListener(HttpUploadListener httpUploadListener) {
        this.l = httpUploadListener;
    }

    public void setPrivateArg(Object obj) {
        this.arg = obj;
    }

    public void setUploadEntity(HttpEntity httpEntity) {
        this.uploadEntity = httpEntity;
    }

    public void startUpload() {
        this.d_thread = new Thread() { // from class: com.estrongs.android.pop.netfs.utils.HttpUploader.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HttpUploader.this.upload();
            }
        };
        this.d_thread.start();
    }

    public void stopUpload() {
        this.exit = true;
        try {
            this.d_thread.interrupt();
            Thread.sleep(200L);
            this.d_thread.destroy();
        } catch (Exception e) {
        }
    }
}
