.class public Lcom/baidu/sapi2/SapiContext;
.super Ljava/lang/Object;


# static fields
.field public static final LOGINMODE_EMAIL:I = 0x1

.field public static final LOGINMODE_NORMAL:I = 0x0

.field public static final TAB_NORMAL:I = 0x0

.field public static final TAB_PHONE:I = 0x1

.field private static appContext:Lcom/baidu/sapi2/SapiContext;


# instance fields
.field protected context:Landroid/content/Context;

.field protected system:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/SapiContext;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->context:Landroid/content/Context;

    const-string v1, "sapi_system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiContext;->appContext:Lcom/baidu/sapi2/SapiContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiContext;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/SapiContext;->appContext:Lcom/baidu/sapi2/SapiContext;

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/SapiContext;->appContext:Lcom/baidu/sapi2/SapiContext;

    return-object v0
.end method


# virtual methods
.method public getAccountPlaceholder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "accountPlaceholder"

    const-string v2, "\u90ae\u7bb1\u5730\u5740/\u7528\u6237\u540d"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "accountTitle"

    const-string v2, "\u90ae\u3000\u7bb1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstTabText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "firstTabText"

    const-string v2, "\u90ae\u7bb1\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoginPhone()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "lastLoginPhone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoginType()I
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "lastLoginType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastLoginUsername()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "lastLoginUsername"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginMode()I
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "loginMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTabDefault()I
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    const-string v1, "tabdefault"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAccountPlaceholder(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountPlaceholder"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAccountTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountTitle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFirstTabText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstTabText"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastLoginPhone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastLoginPhone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastLoginType(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastLoginType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastLoginUsername(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastLoginUsername"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLoginMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loginMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setTabDefault(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiContext;->system:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tabdefault"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
