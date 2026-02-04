.class Lcom/estrongs/android/ui/h/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/aa;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/android/ui/h/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/c;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/e;->c:Lcom/estrongs/android/ui/h/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/h/e;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/h/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->arg1:I

    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/h/e;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/h/e;->c:Lcom/estrongs/android/ui/h/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/h/c;->b(Lcom/estrongs/android/ui/h/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/h/e;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/h/e;->c:Lcom/estrongs/android/ui/h/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/h/c;->b(Lcom/estrongs/android/ui/h/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/h/e;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/console/service/0918/?aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/h/e;->c:Lcom/estrongs/android/ui/h/c;

    invoke-static {v2}, Lcom/estrongs/android/ui/h/c;->a(Lcom/estrongs/android/ui/h/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/h/e;->c:Lcom/estrongs/android/ui/h/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/h/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/h/c;->e(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
