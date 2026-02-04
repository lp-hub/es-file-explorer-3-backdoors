.class Lcom/estrongs/android/ui/b/e;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/b/a;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 9

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/e;->a:Lcom/estrongs/android/ui/b/a;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/b/c;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f080027

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f080028

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/ui/b/e;->ad:Landroid/app/Activity;

    const v7, 0x7f0b0114

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/q;->H()Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/b/c;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f080029

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/b/e;->l(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/b/g;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "NULL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v6, "<br>"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-static {v4}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030003

    return v0
.end method
