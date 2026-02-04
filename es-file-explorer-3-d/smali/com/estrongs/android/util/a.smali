.class public Lcom/estrongs/android/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static k:Lcom/estrongs/android/util/a;


# instance fields
.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/a;->a:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "FileExplorer"

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/android/util/a;->b:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u767e\u5ea6\u7f51\u76d8_Register"

    aput-object v1, v0, v3

    const-string v1, "Root_Already"

    aput-object v1, v0, v4

    const-string v1, "Root_Try"

    aput-object v1, v0, v5

    const-string v1, "\u767e\u5ea6\u7f51\u76d8_Already"

    aput-object v1, v0, v6

    const-string v1, "Normal_Register"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SMS_Register"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Direct_Register"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Press_Login"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Press_Logout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Press_Register"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Press_Direct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Recommend_Show"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Sina_Register"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "QQ_Register"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RenRen_Register"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Press_Normalize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Press_UPInfo_Confirm"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Press_Verify_Confirm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PCS_Phone_Registered"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->c:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5feb\u76d8_UV"

    aput-object v1, v0, v3

    const-string v1, "\u9177\u76d8_UV"

    aput-object v1, v0, v4

    const-string v1, "\u65b0\u6d6a\u5fae\u76d8_UV"

    aput-object v1, v0, v5

    const-string v1, "\u767e\u5ea6\u7f51\u76d8_UV"

    aput-object v1, v0, v6

    const-string v1, "Normal_Login"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Sina_Login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "QQ_Login"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RenRen_Login"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Direct_Active"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Baidu_Active"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sina_Active"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "QQ_Active"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RenRen_Active"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PCS_Home_Page_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PCS_Upload_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PCS_Download_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Normalize_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "UPInfo_Confirm_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Verify_Confirm_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PCS_Upgrade_UV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->d:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Phone_get"

    aput-object v1, v0, v3

    const-string v1, "Phone_no"

    aput-object v1, v0, v4

    const-string v1, "Next_Phone_Get"

    aput-object v1, v0, v5

    const-string v1, "Next_Phone_No"

    aput-object v1, v0, v6

    sput-object v0, Lcom/estrongs/android/util/a;->e:[Ljava/lang/String;

    const-string v0, "Google Market"

    sput-object v0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/util/a;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    iput-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CN"

    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/util/a;->g:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    goto :goto_0
.end method

.method public static a()Lcom/estrongs/android/util/a;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/util/a;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/android/util/a;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;J)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    const-string v2, "Event_DB"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, p2

    if-gtz v3, :cond_0

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    const-string v1, "Event_DB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aq()Z

    move-result v4

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ar()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    const-wide v5, 0x9a7ec800L

    if-nez v4, :cond_1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    :goto_1
    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->c(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-void
.end method
