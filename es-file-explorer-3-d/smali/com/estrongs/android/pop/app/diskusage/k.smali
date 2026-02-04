.class Lcom/estrongs/android/pop/app/diskusage/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->z(Lcom/estrongs/android/pop/app/diskusage/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->A(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->A(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/android/pop/app/diskusage/e;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->B(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->C(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/e;->o(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
