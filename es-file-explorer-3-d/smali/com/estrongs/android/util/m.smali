.class public Lcom/estrongs/android/util/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/PowerManager;

.field private static b:Landroid/net/wifi/WifiManager;

.field private static c:Landroid/os/PowerManager$WakeLock;

.field private static d:Landroid/net/wifi/WifiManager$WifiLock;

.field private static e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/m;->a:Landroid/os/PowerManager;

    sput-object v0, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    sput-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v1, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/m;->c()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/m;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/m;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c()V
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/util/m;->a:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    const-string v0, "power"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/estrongs/android/util/m;->a:Landroid/os/PowerManager;

    :cond_2
    sget-object v0, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_3

    const-string v0, "wifi"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    :cond_3
    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    sget-object v3, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/android/util/m;->a:Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/android/util/m;->a:Landroid/os/PowerManager;

    const-string v3, "ES Wake Lock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_4
    if-eqz v1, :cond_0

    sget-object v0, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    if-lt v0, v4, :cond_6

    :try_start_0
    sget-object v1, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_5

    sget-object v1, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    :goto_3
    :try_start_1
    sget-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-lt v0, v4, :cond_0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :try_start_2
    sget-object v0, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    const-string v1, "Error"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/estrongs/android/util/m;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_7
    move v1, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method

.method private static d()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/m;->d:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/m;->c:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
