.class Lcom/estrongs/android/ui/b/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/b/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ey;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ez;->b:Lcom/estrongs/android/ui/b/ey;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ez;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ez;->b:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->i(Lcom/estrongs/android/ui/b/ew;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ez;->b:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->h(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/ui/notification/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ez;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ez;->b:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->h(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/ui/notification/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/e;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ez;->b:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/e;

    :cond_0
    return-void
.end method
