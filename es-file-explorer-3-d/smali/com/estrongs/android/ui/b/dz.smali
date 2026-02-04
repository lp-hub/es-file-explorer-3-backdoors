.class Lcom/estrongs/android/ui/b/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic b:Lcom/estrongs/android/ui/b/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dz;->b:Lcom/estrongs/android/ui/b/dn;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/dz;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dz;->b:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/android/ui/b/dn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dz;->b:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/android/ui/b/dn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dz;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/dz;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dz;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v1, 0x7f0b0372

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
