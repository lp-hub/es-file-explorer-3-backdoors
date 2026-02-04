.class Lcom/estrongs/android/ui/pcs/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/cg;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->c(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0473

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0465

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0494

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0461

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cg;->b:Lcom/estrongs/android/ui/pcs/bt;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cg;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->c(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Press_Verify_Confirm"

    const-string v2, "Press_Verify_Confirm"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Verify_Confirm_UV"

    const-string v2, "Verify_Confirm_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
