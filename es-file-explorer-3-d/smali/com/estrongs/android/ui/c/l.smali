.class public Lcom/estrongs/android/ui/c/l;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const v5, 0x7f0b0365

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/l;->setTitle(I)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    const v1, 0x7f0b0382

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/l;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/l;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/l;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/m;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/c/m;-><init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/c/l;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0444

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/n;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/c/n;-><init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/c/l;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/l;->requestInputMethod()V

    return-void

    :cond_0
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/p;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/c/p;-><init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/c/l;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/l;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/l;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/l;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ftp://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ftps://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sftp://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0389

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
