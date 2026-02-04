.class public Lcom/estrongs/android/pop/app/b/g;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/b/g;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/b/g;->d:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/g;->a:Ljava/net/InetAddress;

    iput p2, p0, Lcom/estrongs/android/pop/app/b/g;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/g;->a:Ljava/net/InetAddress;

    iget v4, p0, Lcom/estrongs/android/pop/app/b/g;->b:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/estrongs/android/pop/app/b/g;->c:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/b/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/g;->c:I

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget v1, p0, Lcom/estrongs/android/pop/app/b/g;->d:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/b/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/g;->d:I

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->a()I

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->setChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/b/g;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/g;->notifyObservers()V

    goto :goto_0
.end method
