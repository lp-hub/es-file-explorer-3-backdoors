.class Lcom/estrongs/android/ui/view/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/text/ClipboardManager;

.field final synthetic b:Lcom/estrongs/android/ui/view/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/aa;Landroid/text/ClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/view/aa;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ac;->a:Landroid/text/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->a:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/view/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/aa;->c(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0275

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/view/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/aa;->d(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SHA-1"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
