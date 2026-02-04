.class public Lcom/baidu/sapi2/social/utils/SocialParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parserAfterAuthResult(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/social/model/SocialResponse;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    invoke-interface {v4, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-eq v2, v3, :cond_12

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v6, v0

    move-object v0, v2

    move v2, v6

    goto :goto_0

    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "data"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/social/model/SocialResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/SocialResponse;-><init>()V

    move-object v2, v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/baidu/sapi2/social/model/SocialResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/SocialResponse;-><init>()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setErrorCode(I)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const-string v5, "error_description"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Lcom/baidu/sapi2/social/model/SocialResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/SocialResponse;-><init>()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setErrorMsg(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setErrorCode(I)V

    move-object v2, v0

    goto :goto_1

    :cond_4
    const-string v5, "error_description"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setErrorMsg(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_5
    const-string v5, "is_binded"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setBinded(Z)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const-string v5, "display_name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setDisplayname(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    const-string v5, "passport_uname"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setBaidu_uname(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    const-string v5, "bduid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setBduid(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    const-string v5, "bduss"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setBduss(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_b
    const-string v5, "ptoken"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setPtoken(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_c
    const-string v5, "os_username"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setSocial_uname(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_d
    const-string v5, "os_sex"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/sapi2/social/config/Sex;->getSex(I)Lcom/baidu/sapi2/social/config/Sex;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setSocial_sex(Lcom/baidu/sapi2/social/config/Sex;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_f
    const-string v2, "0"

    goto :goto_3

    :cond_10
    const-string v5, "os_headurl"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setSocial_headurl(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_11
    const-string v5, "os_type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/sapi2/social/config/SocialType;->getSocialType(I)Lcom/baidu/sapi2/social/config/SocialType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/SocialResponse;->setSocial_type(Lcom/baidu/sapi2/social/config/SocialType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto/16 :goto_1

    :pswitch_1
    move-object v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_12
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parserFillUProfileResult(Ljava/lang/String;)Lcom/baidu/sapi2/social/model/FillUProfileResponse;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    invoke-interface {v3, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v5, v0

    move-object v0, v2

    move v2, v5

    goto :goto_0

    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;-><init>()V

    move-object v2, v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v4, "error_code"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setErrorCode(I)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const-string v4, "error_description"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setErrorMsg(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    const-string v4, "errno"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setErrorCode(I)V

    move-object v2, v0

    goto :goto_1

    :cond_4
    const-string v4, "errmsg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setErrorMsg(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_5
    const-string v4, "bduss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setBduss(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_6
    const-string v4, "ptoken"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setPtoken(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_7
    const-string v4, "displayname"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setDisplayname(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->setBduid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto/16 :goto_1

    :pswitch_1
    move-object v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parserLoginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    invoke-interface {v3, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v5, v0

    move-object v0, v2

    move v2, v5

    goto :goto_0

    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    move-object v2, v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v4, "error_code"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const-string v4, "error_description"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorMsg:Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    const-string v4, "errno"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    :goto_2
    move-object v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_5
    return-object v0

    :cond_6
    :try_start_1
    const-string v4, "errmsg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorMsg:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_7
    const-string v4, "bduss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    const-string v4, "ptoken"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    const-string v4, "stoken"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mStoken:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    const-string v4, "uname"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_b
    const-string v4, "displayname"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    :cond_c
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto/16 :goto_1

    :pswitch_1
    move-object v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
