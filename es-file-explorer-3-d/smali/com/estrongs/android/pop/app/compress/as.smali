.class public Lcom/estrongs/android/pop/app/compress/as;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/as;->c:Z

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/compress/as;->c:Z

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0802c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/at;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/at;-><init>(Lcom/estrongs/android/pop/app/compress/as;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    const v0, 0x7f08003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const v0, 0x7f08003f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/compress/au;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/pop/app/compress/au;-><init>(Lcom/estrongs/android/pop/app/compress/as;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/compress/as;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b0233

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/compress/as;->setTitle(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->b:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/as;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/as;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/as;->c:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/compress/as;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/as;->c:Z

    return v0
.end method
