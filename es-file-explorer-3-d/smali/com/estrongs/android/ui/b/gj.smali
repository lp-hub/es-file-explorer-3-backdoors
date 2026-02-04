.class Lcom/estrongs/android/ui/b/gj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/gi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/gi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/gi;->a(Lcom/estrongs/android/ui/b/gi;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/gi;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/gi;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/gi;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/gj;->a:Lcom/estrongs/android/ui/b/gi;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/gi;->b(Lcom/estrongs/android/ui/b/gi;)Lcom/estrongs/android/f/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/f/h;->a(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method
