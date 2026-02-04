.class Lcom/estrongs/android/view/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v0}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    iget-object v1, v1, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v0}, Lcom/estrongs/android/view/ck;->b(Lcom/estrongs/android/view/ck;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    const v2, 0x7f0b03bd

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/ck;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v1}, Lcom/estrongs/android/view/ck;->c(Lcom/estrongs/android/view/ck;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v0}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    iget-object v1, v1, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v0}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    iget-object v1, v1, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ck;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/ck;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
