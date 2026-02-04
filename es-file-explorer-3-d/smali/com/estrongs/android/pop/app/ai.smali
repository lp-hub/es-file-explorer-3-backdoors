.class Lcom/estrongs/android/pop/app/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b039d

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b00af

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    const v1, 0x7f0b039e

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/q;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->m(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
