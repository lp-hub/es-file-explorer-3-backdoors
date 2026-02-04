.class Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field private static final KEY_APPID:Ljava/lang/String; = "appid"

.field private static final KEY_BDUSS:Ljava/lang/String; = "bduss"

.field private static final KEY_SNAME:Ljava/lang/String; = "sName"

.field private static final KEY_TPL:Ljava/lang/String; = "tpl"

.field private static final TIME_OUT:I = 0x3a98


# instance fields
.field private mBduss:Ljava/lang/String;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mHttpParams:Lorg/apache/http/params/HttpParams;

.field private mSname:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/sapi2/loginshare/StatisticsHelper;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/loginshare/StatisticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x3a98

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->this$0:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mBduss:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mSname:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpParams:Lorg/apache/http/params/HttpParams;

    iput-object p2, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mBduss:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mSname:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpParams:Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->this$0:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->access$000(Lcom/baidu/sapi2/loginshare/StatisticsHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "bduss"

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mBduss:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->this$0:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->access$100(Lcom/baidu/sapi2/loginshare/StatisticsHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sName"

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mSname:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
