.class Lcom/estrongs/android/ui/pcs/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0473

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0465

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0494

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->d(Lcom/estrongs/android/ui/pcs/x;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->e(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0498

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->f(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->g(Lcom/estrongs/android/ui/pcs/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Press_UPInfo_Confirm"

    const-string v2, "Press_UPInfo_Confirm"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UPInfo_Confirm_UV"

    const-string v2, "UPInfo_Confirm_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
