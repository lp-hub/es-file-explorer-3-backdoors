.class public Lcom/baidu/sapi2/social/utils/SocialHelper;
.super Ljava/lang/Object;


# instance fields
.field private mToken:Lcom/baidu/sapi2/loginshare/Token;

.field private sapiConfig:Lcom/baidu/sapi2/SapiConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    return-void
.end method

.method private getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public authResult(Ljava/lang/String;Lcom/baidu/sapi2/social/config/SocialType;)Lcom/baidu/sapi2/social/model/SocialResponse;
    .locals 5

    const-string v0, "<client>([\\S\\s]*?)</client>"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getBindType()Lcom/baidu/sapi2/social/config/BindType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/BindType;->getCallbackPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/social/utils/SocialParser;->parserAfterAuthResult(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/social/model/SocialResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getBduss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getPtoken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getErrorCode()I

    move-result v0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/social/model/SocialResponse;->setErrorCode(I)V

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/social/model/SocialToken;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/SocialToken;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->isBinded()Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/sapi2/social/model/SocialToken;->isBinded:Z

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getSocial_uname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/social/model/SocialToken;->username:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getSocial_sex()Lcom/baidu/sapi2/social/config/Sex;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/social/model/SocialToken;->sex:Lcom/baidu/sapi2/social/config/Sex;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getSocial_headurl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/social/model/SocialToken;->headURL:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getSocial_type()Lcom/baidu/sapi2/social/config/SocialType;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/social/model/SocialToken;->type:Lcom/baidu/sapi2/social/config/SocialType;

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iput-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getDisplayname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getBduss()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getPtoken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getBaidu_uname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v2, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getBduid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/SocialResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const-string v3, "{}"

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    goto :goto_0
.end method

.method public fillUProfileResult(Ljava/lang/String;)Lcom/baidu/sapi2/social/model/FillUProfileResponse;
    .locals 4

    const-string v0, "<client>([\\S\\s]*?)</client>"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/social/utils/SocialParser;->parserFillUProfileResult(Ljava/lang/String;)Lcom/baidu/sapi2/social/model/FillUProfileResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getBduss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getPtoken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getErrorCode()I

    move-result v0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setErrorCode(I)V

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getBduss()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getPtoken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getBduid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLoginProtectFinishUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLoginProtectFinishUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlAfterAuth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getDomanAfterAuth()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlBind(Lcom/baidu/sapi2/social/config/SocialType;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    sget-object v3, Lcom/baidu/sapi2/social/config/Display;->NATIVE:Lcom/baidu/sapi2/social/config/Display;

    invoke-virtual {v3}, Lcom/baidu/sapi2/social/config/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/social/config/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getBindType()Lcom/baidu/sapi2/social/config/BindType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/social/config/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDomanStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/social/utils/SocialClient;->getInstance()Lcom/baidu/sapi2/social/utils/SocialClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/social/utils/SocialClient;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlBind(Lcom/baidu/sapi2/social/config/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    sget-object v3, Lcom/baidu/sapi2/social/config/Display;->NATIVE:Lcom/baidu/sapi2/social/config/Display;

    invoke-virtual {v3}, Lcom/baidu/sapi2/social/config/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/social/config/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getBindType()Lcom/baidu/sapi2/social/config/BindType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/social/config/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "osuid"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDomainSSOStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/social/utils/SocialClient;->getInstance()Lcom/baidu/sapi2/social/utils/SocialClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/social/utils/SocialClient;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getUrlFillFinish()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getDomanFillFinish()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlFillStart()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "showtype"

    const-string v3, "phone"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device"

    const-string v3, "wap"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "apps"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDomanFillStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/social/utils/SocialClient;->getInstance()Lcom/baidu/sapi2/social/utils/SocialClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/social/utils/SocialClient;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlFinishBind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getDomanFinishBind()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlSSOFinish()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getDomainSSOFinish()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    new-instance v0, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const/4 v0, 0x1

    return v0
.end method

.method public loginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;
    .locals 4

    const-string v0, "<client>([\\S\\s]*?)</client>"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/social/utils/SocialParser;->parserLoginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v1, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v1, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v1, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v1, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v1, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "stoken"

    iget-object v3, v1, Lcom/baidu/sapi2/model/LoginResponse;->mStoken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uid"

    iget-object v3, v1, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/social/utils/SocialHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
