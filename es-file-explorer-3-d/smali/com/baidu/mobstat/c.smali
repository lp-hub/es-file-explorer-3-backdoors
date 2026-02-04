.class Lcom/baidu/mobstat/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Android"

    sput-object v0, Lcom/baidu/mobstat/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/c;->e:I

    iput-object v1, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/mobstat/c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/c;->b:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/c;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/baidu/mobstat/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->loadGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907id\u4e3a\u7a7a\uff0c\u7cfb\u7edf\u751f\u6210id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/baidu/mobstat/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->k:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/c;->h:I

    invoke-static {p1}, Lcom/baidu/mobstat/z;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/c;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const-string v0, "stat"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/mobstat/c;->h:I

    iget v1, p0, Lcom/baidu/mobstat/c;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/c;->h:I

    iget v0, p0, Lcom/baidu/mobstat/c;->h:I

    iget v1, p0, Lcom/baidu/mobstat/c;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/c;->i:I

    iget v0, p0, Lcom/baidu/mobstat/c;->h:I

    iget v1, p0, Lcom/baidu/mobstat/c;->i:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/c;->h:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_3
    :try_start_6
    iget-object v0, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    :try_start_8
    invoke-static {p1}, Lcom/baidu/mobstat/z;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/c;->e:I

    invoke-static {p1}, Lcom/baidu/mobstat/z;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->f:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mobstat/c;->m:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    :try_start_a
    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/c;->n:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    :try_start_b
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/c;->o:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_8
    :try_start_c
    invoke-static {p1}, Lcom/baidu/mobstat/z;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->p:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_e
    invoke-static {v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :cond_a
    :try_start_f
    invoke-static {p1}, Lcom/baidu/mobstat/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->m:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    :catch_6
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :cond_b
    :try_start_11
    invoke-static {p1}, Lcom/baidu/mobstat/z;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->n:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    :catch_7
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    :cond_c
    :try_start_13
    invoke-static {p1}, Lcom/baidu/mobstat/z;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/c;->o:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_8

    :catch_8
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_8
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "o"

    sget-object v0, Lcom/baidu/mobstat/c;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "s"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "k"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "i"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "3.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "a"

    iget v2, p0, Lcom/baidu/mobstat/c;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "d"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "w"

    iget v2, p0, Lcom/baidu/mobstat/c;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "h"

    iget v2, p0, Lcom/baidu/mobstat/c;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "op"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->k:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "m"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->l:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cl"

    iget-object v2, p0, Lcom/baidu/mobstat/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gl"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->n:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_a
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "wl"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->o:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "l"

    iget-object v0, p0, Lcom/baidu/mobstat/c;->p:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sq"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "stat"

    invoke-static {}, Lcom/baidu/mobstat/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "header ini error"

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    sget-object v0, Lcom/baidu/mobstat/c;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/c;->b:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/c;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/c;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/c;->f:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/c;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/c;->j:Ljava/lang/String;

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/c;->k:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/c;->l:Ljava/lang/String;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/c;->n:Ljava/lang/String;

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/c;->o:Ljava/lang/String;

    goto :goto_b

    :cond_c
    iget-object v0, p0, Lcom/baidu/mobstat/c;->p:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c
.end method
