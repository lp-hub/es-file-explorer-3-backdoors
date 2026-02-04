.class Lcom/baidu/mobstat/l;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/os/HandlerThread;

.field private static j:Landroid/os/Handler;

.field private static k:Lcom/baidu/mobstat/l;


# instance fields
.field a:Z

.field b:I

.field private d:Z

.field private e:Lcom/baidu/mobstat/SendStrategyEnum;

.field private f:I

.field private g:Ljava/util/Timer;

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/l;->c:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/l;

    invoke-direct {v0}, Lcom/baidu/mobstat/l;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/l;->k:Lcom/baidu/mobstat/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/mobstat/l;->d:Z

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/l;->f:I

    iput v1, p0, Lcom/baidu/mobstat/l;->h:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/l;->i:Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/l;->a:Z

    iput v1, p0, Lcom/baidu/mobstat/l;->b:I

    sget-object v0, Lcom/baidu/mobstat/l;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/l;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/l;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/mobstat/l;->f:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p1
.end method

.method public static a()Lcom/baidu/mobstat/l;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/l;->k:Lcom/baidu/mobstat/l;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/l;->g:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/l;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/l;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/l;->i:Z

    return p1
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/l;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/l;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/l;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/l;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/l;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/l;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/baidu/mobstat/l;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/l;->h:I

    return v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 4

    iget v0, p0, Lcom/baidu/mobstat/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/l;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**************sendtimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/mobstat/l;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/b;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/l;->a:Z

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/l;->a:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/mobstat/l;->j:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/p;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/p;-><init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**************succ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/baidu/mobstat/l;->h:I

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/16 v3, 0x18

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    :try_start_0
    const-string v1, "BaiduMobAd_EXCEPTION_LOG"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/j;->a()Lcom/baidu/mobstat/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setExceptionTurn(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "BaiduMobAd_SEND_STRATEGY"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "BaiduMobAd_TIME_INTERVAL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v0

    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    if-lez v1, :cond_2

    if-gt v1, v3, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    const-string v0, "BaiduMobAd_ONLY_WIFI"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setExceptionTurn(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    :try_start_5
    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    :try_start_6
    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_7
    :try_start_7
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 3

    const/16 v2, 0x18

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p3, :cond_1

    if-gt p3, v2, :cond_1

    iput p3, p0, Lcom/baidu/mobstat/l;->f:I

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/l;->f:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    iput-boolean p4, p0, Lcom/baidu/mobstat/l;->d:Z

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/l;->d:Z

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V

    const-string v0, "stat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sstype is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " And time_interval is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " And m_only_wifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/mobstat/l;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "setSendLogStrategy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time_interval is invalid, new strategy does not work"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->c([Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/l;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/z;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "stat"

    const-string v1, "sendLogData() does not send because of only_wifi setting"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "stat"

    const-string v1, "sendLogData exception when get wifimanager"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/baidu/mobstat/l;->b:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/l;->a:Z

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/l;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(ZLandroid/content/Context;)V
    .locals 3

    iput-boolean p1, p0, Lcom/baidu/mobstat/l;->i:Z

    const-string v0, "stat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_ANALYSIS_EXCEPTION is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/mobstat/l;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/l;->i:Z

    invoke-virtual {v0, p2, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setExceptionTurn(Landroid/content/Context;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/l;->j:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/m;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/m;-><init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setLastSendTime(Landroid/content/Context;J)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    const v5, 0x36ee80

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/l;->g:Ljava/util/Timer;

    const-string v0, "***********************set timer log"

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/l;->g:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mobstat/o;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/o;-><init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V

    iget v2, p0, Lcom/baidu/mobstat/l;->f:I

    mul-int/2addr v2, v5

    int-to-long v2, v2

    iget v4, p0, Lcom/baidu/mobstat/l;->f:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
