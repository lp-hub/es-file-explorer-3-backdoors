.class Lcom/estrongs/android/ui/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/ad;

.field final synthetic b:Lcom/estrongs/android/ui/view/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/w;Lcom/estrongs/android/pop/app/a/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/x;->b:Lcom/estrongs/android/ui/view/w;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->b:Lcom/estrongs/android/ui/view/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/w;->b:Lcom/estrongs/android/ui/view/v;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ad;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ad;->c:Landroid/view/View;

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/y;

    iget-object v2, v0, Lcom/estrongs/android/ui/view/y;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/af;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v3, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/af;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/view/y;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/x;->b:Lcom/estrongs/android/ui/view/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/w;->b:Lcom/estrongs/android/ui/view/v;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/ui/view/v;Lcom/estrongs/android/pop/app/a/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/estrongs/android/ui/view/y;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/af;->e:Ljava/lang/String;

    goto :goto_0
.end method
