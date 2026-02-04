.class final Lcom/estrongs/android/pop/utils/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/by;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/fs/g;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ak;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ak;->b:Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/ak;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ak;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ak;->b:Lcom/estrongs/fs/g;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ak;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/estrongs/fs/b/ab;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ak;->a:Landroid/app/Activity;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/b/ew;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ak;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ak;->a:Landroid/app/Activity;

    const v4, 0x7f0b03be

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/ew;->b(Z)Lcom/estrongs/android/ui/b/ew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ab;->execute()V

    return-void
.end method
