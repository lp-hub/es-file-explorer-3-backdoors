.class Lcom/estrongs/android/ui/b/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/b/eq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/eq;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/es;->b:Lcom/estrongs/android/ui/b/eq;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/es;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/es;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->d()Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/es;->b:Lcom/estrongs/android/ui/b/eq;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/eq;->a:Lcom/estrongs/android/ui/b/eo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open_folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/b/eo;->a(Lcom/estrongs/android/ui/b/eo;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/es;->b:Lcom/estrongs/android/ui/b/eq;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/eq;->a:Lcom/estrongs/android/ui/b/eo;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/eo;->c()V

    return-void
.end method
