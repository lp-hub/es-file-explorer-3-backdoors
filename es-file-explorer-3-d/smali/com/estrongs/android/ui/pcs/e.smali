.class Lcom/estrongs/android/ui/pcs/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->b(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/d;->c(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/d;->b(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0472

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
