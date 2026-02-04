.class Lcom/estrongs/android/ui/h/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/h/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/g;->a:Lcom/estrongs/android/ui/h/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/console/service/0918/?iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/h/g;->a:Lcom/estrongs/android/ui/h/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/h/f;->a:Lcom/estrongs/android/ui/h/c;

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
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
