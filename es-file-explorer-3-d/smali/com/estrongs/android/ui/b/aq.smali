.class public Lcom/estrongs/android/ui/b/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    new-instance v0, Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method public a(I)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    return-object p0
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setItemsEnable(Z)V

    return-object p0
.end method

.method public a([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/b/ag;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public b()Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method public b(I)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Z)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setCancelable(Z)V

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Z)Lcom/estrongs/android/ui/b/aq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/aq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/b/ag;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method
