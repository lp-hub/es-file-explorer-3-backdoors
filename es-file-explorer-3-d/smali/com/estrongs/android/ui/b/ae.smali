.class Lcom/estrongs/android/ui/b/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/b/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 4

    const v2, 0x7f0b048e

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/y;->d(Lcom/estrongs/android/ui/b/y;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b048d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/b/y;->a(Lcom/estrongs/android/ui/b/y;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/y;->g(Lcom/estrongs/android/ui/b/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/y;->e(Lcom/estrongs/android/ui/b/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/y;->h(Lcom/estrongs/android/ui/b/y;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/y;->d(Lcom/estrongs/android/ui/b/y;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/b/y;->a(Lcom/estrongs/android/ui/b/y;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ae;->b:Lcom/estrongs/android/ui/b/y;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/y;->d(Lcom/estrongs/android/ui/b/y;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
