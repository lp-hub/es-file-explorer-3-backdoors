.class public Lcom/estrongs/android/a/p;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field a:Lcom/estrongs/fs/g;

.field b:Lcom/estrongs/android/a/s;

.field c:I

.field d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/g;Lcom/estrongs/android/a/s;)V
    .locals 6

    const v5, 0x7f0b04e4

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/estrongs/android/a/p;->c:I

    iput-object p2, p0, Lcom/estrongs/android/a/p;->a:Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/android/a/p;->b:Lcom/estrongs/android/a/s;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/a/p;->setContentView(Landroid/view/View;)V

    const v0, 0x7f08018f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b03af

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    const v0, 0x7f080195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b03b0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    const v0, 0x7f08018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/a/p;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/a/q;

    invoke-direct {v2, p0}, Lcom/estrongs/android/a/q;-><init>(Lcom/estrongs/android/a/p;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/a/p;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b02a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/a/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/a/r;-><init>(Lcom/estrongs/android/a/p;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/a/p;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b042c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/a/p;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0434

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Lcom/estrongs/fs/g;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/a/p;->setCancelable(Z)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/a/p;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/estrongs/fs/g;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/p;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->H()Ljava/text/DateFormat;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080190

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f080192

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f080194

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/a/p;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/a/p;->b:Lcom/estrongs/android/a/s;

    iget v1, p0, Lcom/estrongs/android/a/p;->c:I

    iget-object v2, p0, Lcom/estrongs/android/a/p;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/a/s;->a(IZ)V

    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
