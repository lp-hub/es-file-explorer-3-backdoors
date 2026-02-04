.class Lcom/estrongs/android/ui/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/l;

.field final synthetic b:Lcom/estrongs/android/ui/b/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/o;Lcom/estrongs/android/ui/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/r;->a:Lcom/estrongs/android/ui/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f09002d

    const v5, 0x7f090012

    const/4 v4, 0x6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080097

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->a(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->a(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->b(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->c(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->d(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080094

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->b(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->e(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080095

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->c(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->f(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f08009c

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->d(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->g(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f08009d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->e(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->h(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080097

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->f(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->i(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->j(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->k(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->l(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080094

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->g(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->m(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f080095

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->h(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->n(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f08009c

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->i(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->o(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    const v1, 0x7f08009d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/o;->j(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/r;->b:Lcom/estrongs/android/ui/b/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/o;->p(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
