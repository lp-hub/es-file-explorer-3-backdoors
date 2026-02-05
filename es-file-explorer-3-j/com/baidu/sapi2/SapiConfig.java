package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.sapi2.social.config.BindType;
import com.baidu.sapi2.social.config.Display;
import com.baidu.sapi2.social.config.Domain;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Enumeration;

/* loaded from: classes.dex */
public class SapiConfig {
    public static final int SSL_AES = 6;
    private Display DISPLAY;
    private String deviceInfo;
    private String devicePackageSign;
    private boolean enableYi;
    private boolean isDebuggable;
    private boolean isShare;
    private boolean isShowDevice;
    private String mAppId;
    private BindType mBindType;
    private String mClientId;
    private String mClientIp;
    private CppUtils mCppUtils;
    private Domain mDomain;
    private String mSignKey;
    private String mTpl;
    private PassportDomanGetter passportDomanGetter;

    public SapiConfig(String str, String str2, String str3, Domain domain) {
        this(str, str2, str3, domain, BindType.IMPLICIT, true, true);
    }

    public SapiConfig(String str, String str2, String str3, Domain domain, BindType bindType) {
        this(str, str2, str3, domain, bindType, true, true);
    }

    public SapiConfig(String str, String str2, String str3, Domain domain, BindType bindType, boolean z) {
        this(str, str2, str3, domain, bindType, z, true);
    }

    public SapiConfig(String str, String str2, String str3, Domain domain, BindType bindType, boolean z, boolean z2) {
        this.mDomain = Domain.DOMAIN_ONLINE;
        this.mBindType = BindType.IMPLICIT;
        this.DISPLAY = Display.NATIVE;
        this.isShare = true;
        this.isDebuggable = false;
        this.isShowDevice = false;
        this.enableYi = true;
        this.deviceInfo = "";
        this.devicePackageSign = "";
        this.mTpl = str;
        this.mAppId = str2;
        this.mSignKey = str3;
        this.mClientIp = getLocalIpAddress();
        this.mDomain = domain;
        this.mBindType = bindType;
        this.mCppUtils = new CppUtils();
        this.isShare = z;
        this.enableYi = z2;
        if (!domain.getURL().equals(Domain.DOMAIN_ONLINE.getURL())) {
            this.isDebuggable = true;
        }
        this.deviceInfo = Utils.createDeviceInfo();
    }

    private String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e) {
        }
        return null;
    }

    public String getAppId() {
        return this.mAppId;
    }

    public String getApplyregcode() {
        return getDomain().getURL() + this.mCppUtils.nativeConfigApplyregcode();
    }

    public String getAskDynamicPwd() {
        return getDomain().getURL() + this.mCppUtils.nativeAskDynamicPwd();
    }

    public BindType getBindType() {
        return this.mBindType;
    }

    public String getClientId() {
        return Utils.isValid(this.mClientId) ? this.mClientId : "123456789";
    }

    public String getClientIp() {
        return this.mClientIp;
    }

    public int getCryptType() {
        return 6;
    }

    public String getDeviceCheck() {
        return getDomain().getDeviceUrl() + this.mCppUtils.nativeGetDeviceCheck();
    }

    public String getDeviceForceReg() {
        return getDomain().getDeviceUrl() + this.mCppUtils.nativeGetDeviceForceReg();
    }

    public String getDeviceInfo() {
        return this.deviceInfo;
    }

    public String getDeviceLogin() {
        return getDomain().getDeviceUrl() + this.mCppUtils.nativeGetDeviceLogin();
    }

    public String getDevicePackageSign() {
        return this.devicePackageSign;
    }

    public String getDeviceReg() {
        return getDomain().getDeviceUrl() + this.mCppUtils.nativeGetDeviceReg();
    }

    public Display getDisplay() {
        return this.DISPLAY;
    }

    public Domain getDomain() {
        return this.mDomain;
    }

    public String getDomainSSOFinish() {
        return (!getDomain().getURL().startsWith(com.baidu.sapi2.loginshare.Utils.http) || this.isDebuggable) ? getDomain().getURL() + this.mCppUtils.nativeGetSSOFinish() : getDomain().getURL().replace(com.baidu.sapi2.loginshare.Utils.http, com.baidu.sapi2.loginshare.Utils.https) + this.mCppUtils.nativeGetSSOFinish();
    }

    public String getDomainSSOStart() {
        return (!getDomain().getURL().startsWith(com.baidu.sapi2.loginshare.Utils.http) || this.isDebuggable) ? getDomain().getURL() + this.mCppUtils.nativeGetSSOStart() : getDomain().getURL().replace(com.baidu.sapi2.loginshare.Utils.http, com.baidu.sapi2.loginshare.Utils.https) + this.mCppUtils.nativeGetSSOStart();
    }

    public String getDomanAfterAuth() {
        return getDomain().getURL() + this.mCppUtils.nativeGetSocialAfterAuth();
    }

    public String getDomanFillFinish() {
        return getDomain().getWap() + this.mCppUtils.nativeGetFillFinish();
    }

    public String getDomanFillStart() {
        return getDomain().getWap() + this.mCppUtils.nativeGetFillStart();
    }

    public String getDomanFinishBind() {
        return getDomain().getURL() + this.mCppUtils.nativeGetSocialFinishAuth();
    }

    public String getDomanStart() {
        return getDomain().getURL() + this.mCppUtils.nativeGetSocialStart();
    }

    public String getDownloadLogin() {
        return getDomain().getURL() + this.mCppUtils.nativeGetDownloadLogin();
    }

    public String getFastReg() {
        return getDomain().getURL() + this.mCppUtils.nativeGetFastReg();
    }

    public String getFilluname() {
        return getDomain().getURL() + "/v2/sapi/center/filluname";
    }

    public String getGenimage() {
        return getDomain().getURL() + "/cgi-bin/genimage?";
    }

    public String getLastCert() {
        return getDomain().getURL() + "/sslcrypt/get_last_cert";
    }

    public String getLogin() {
        return getDomain().getURL() + this.mCppUtils.nativeConfigLogin();
    }

    public String getLoginProtectFinishUrl() {
        return getDomain().getURL() + "/wp/login/proxy";
    }

    public String getLogout() {
        return getDomain().getURL() + this.mCppUtils.nativeConfigLogout();
    }

    public PassportDomanGetter getPassportDomanGetter() {
        if (TextUtils.isEmpty(this.mDomain.getURL()) || !this.mDomain.getURL().equals(Domain.DOMAIN_ONLINE.getURL())) {
            return null;
        }
        if (this.passportDomanGetter != null) {
            return this.passportDomanGetter;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mCppUtils.nativeConfigPassDoman1());
        arrayList.add(this.mCppUtils.nativeConfigPassDoman2());
        arrayList.add(this.mCppUtils.nativeConfigPassDoman3());
        this.passportDomanGetter = new PassportDomanGetter(arrayList, 3);
        return this.passportDomanGetter;
    }

    public String getPhoneregverify() {
        return getDomain().getURL() + this.mCppUtils.nativeConfigPhoneregverify();
    }

    public String getQRAppLogin() {
        return getDomain().getURL() + this.mCppUtils.nativeGetQrAppLogin();
    }

    public String getQrPCLogin() {
        return getDomain().getURL() + this.mCppUtils.nativeGetQrPCLogin();
    }

    public String getRegdatacheck() {
        return getDomain().getURL() + this.mCppUtils.nativeConfigRegdatacheck();
    }

    public String getSignkey() {
        return this.mSignKey;
    }

    public String getTpl() {
        return this.mTpl;
    }

    public String getYunInfoUrl() {
        return getDomain().getURL() + "/v2/sapi/loginsdkcontrol";
    }

    public boolean isClientIpValid() {
        return this.mClientIp != null && this.mClientIp.length() > 0;
    }

    public boolean isDebuggable() {
        return this.isDebuggable;
    }

    public boolean isEnableYi() {
        return this.enableYi;
    }

    public boolean isShare() {
        return this.isShare;
    }

    public boolean isShowDevice() {
        return this.isShowDevice;
    }

    public void resetPassportDomainGetter() {
        getDomain().setURL("http://passport.baidu.com");
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mCppUtils.nativeConfigPassDoman1());
        arrayList.add(this.mCppUtils.nativeConfigPassDoman2());
        arrayList.add(this.mCppUtils.nativeConfigPassDoman3());
        this.passportDomanGetter = new PassportDomanGetter(arrayList, 3);
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setDevicePackageSign(String str) {
        this.devicePackageSign = str;
    }

    public void setDomain(Domain domain) {
        this.mDomain = domain;
    }

    public void setEnableYi(boolean z) {
        this.enableYi = z;
    }

    public void setShowDevice(boolean z) {
        this.isShowDevice = z;
    }
}
