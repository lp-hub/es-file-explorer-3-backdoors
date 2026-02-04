.class public Lcom/estrongs/android/ui/b/ag;
.super Landroid/app/Dialog;


# instance fields
.field button_cancel:Landroid/widget/Button;

.field button_ok:Landroid/widget/Button;

.field private dismissed:Z

.field public itemsEnable:Z

.field listAdapter:Lcom/estrongs/android/ui/b/ar;

.field listView:Landroid/widget/ListView;

.field private mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

.field private mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

.field private mContentContainer:Landroid/widget/FrameLayout;

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectable:Z

.field private messageView:Landroid/widget/TextView;

.field protected themeManager:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c0005

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->dismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->itemsEnable:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ag;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->dismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->itemsEnable:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ag;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/ui/b/ag;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/android/ui/b/ag;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/estrongs/android/ui/b/ag;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/estrongs/android/ui/b/ag;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/estrongs/android/ui/b/ag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->mSelectable:Z

    return v0
.end method

.method private init()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, -0x2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->themeManager:Lcom/estrongs/android/ui/theme/al;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/ag;->mSelectable:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0800b7

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/ag;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->dismissed:Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public getConfirmButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setAllButtonsEnabled(Z)V

    return-void
.end method

.method public isDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->dismissed:Z

    return v0
.end method

.method public requestInputMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public setAllButtonsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ak;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    return-object v0

    :cond_1
    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/al;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    const v1, 0x7f02018d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/aj;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    return-object v0

    :cond_1
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->button_ok:Landroid/widget/Button;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0800b9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ag;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ag;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ag;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/estrongs/android/ui/b/ag;->mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/ui/b/ar;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/ar;-><init>(Lcom/estrongs/android/ui/b/ag;Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listAdapter:Lcom/estrongs/android/ui/b/ar;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/estrongs/android/ui/b/ap;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/ap;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->listAdapter:Lcom/estrongs/android/ui/b/ar;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/estrongs/android/ui/b/ag;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setItemsEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ag;->itemsEnable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ag;->itemsEnable:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listAdapter:Lcom/estrongs/android/ui/b/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listAdapter:Lcom/estrongs/android/ui/b/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ar;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/b/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/am;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/b/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/an;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/b/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ao;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ag;->mSelectable:Z

    return-void
.end method

.method public setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/b/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ah;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/estrongs/android/ui/b/ag;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/b/ai;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ai;-><init>(Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ag;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ag;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/ag;->setAllButtonsEnabled(Z)V

    return-void
.end method
