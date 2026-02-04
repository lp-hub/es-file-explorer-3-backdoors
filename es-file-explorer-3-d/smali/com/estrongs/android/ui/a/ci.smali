.class public Lcom/estrongs/android/ui/a/ci;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/theme/al;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/ci;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/a/ci;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/ci;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/ci;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ci;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ci;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/ci;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/a/ci;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/a/ci;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/a/ci;->d:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/estrongs/android/ui/a/ci;->d:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/a/ci;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/ci;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/a/ci;->c(I)Lcom/estrongs/android/ui/theme/ai;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/a/ci;->a(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v1, 0x7f02022f

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/ci;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f02022e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public c(I)Lcom/estrongs/android/ui/theme/ai;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/ai;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/ci;->c(I)Lcom/estrongs/android/ui/theme/ai;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x0

    const v9, 0x7f020235

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/estrongs/android/ui/a/co;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/co;-><init>(Lcom/estrongs/android/ui/a/ci;)V

    const v0, 0x7f080386

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080382

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f080383

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->d:Landroid/widget/ImageView;

    const v0, 0x7f080387

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->c:Landroid/widget/ImageView;

    const v0, 0x7f080384

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->e:Landroid/widget/RadioButton;

    const v0, 0x7f080388

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ProgressTextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/co;->f:Lcom/estrongs/android/widget/ProgressTextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/co;->f:Lcom/estrongs/android/widget/ProgressTextView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/ProgressTextView;->a(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/ci;->c(I)Lcom/estrongs/android/ui/theme/ai;

    move-result-object v5

    if-nez v5, :cond_1

    move-object p2, v4

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/co;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    invoke-virtual {v5, v1}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz p1, :cond_2

    if-nez v4, :cond_4

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/ai;->c()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/estrongs/android/ui/a/cj;

    invoke-direct {v4, p0, v5, p1}, Lcom/estrongs/android/ui/a/cj;-><init>(Lcom/estrongs/android/ui/a/ci;Lcom/estrongs/android/ui/theme/ai;I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->e:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->e:Landroid/widget/RadioButton;

    iget v4, p0, Lcom/estrongs/android/ui/a/ci;->d:I

    if-ne v4, p1, :cond_6

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/a/ck;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/a/ck;-><init>(Lcom/estrongs/android/ui/a/ci;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    if-gtz p1, :cond_9

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->f:Lcom/estrongs/android/widget/ProgressTextView;

    iget-object v2, v5, Lcom/estrongs/android/ui/theme/ai;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/ProgressTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->f:Lcom/estrongs/android/widget/ProgressTextView;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/ai;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/ProgressTextView;->a(Z)V

    iget-object v0, v0, Lcom/estrongs/android/ui/a/co;->f:Lcom/estrongs/android/widget/ProgressTextView;

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/theme/ai;->a(Lcom/estrongs/android/widget/ProgressTextView;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v6, v5, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x7

    if-lt v1, v6, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v4, :cond_8

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/a/cl;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/cl;-><init>(Lcom/estrongs/android/ui/a/ci;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->d:Landroid/widget/ImageView;

    const v2, 0x7f020292

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->e:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/a/cn;

    invoke-direct {v2, p0, v5}, Lcom/estrongs/android/ui/a/cn;-><init>(Lcom/estrongs/android/ui/a/ci;Lcom/estrongs/android/ui/theme/ai;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/a/cm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/cm;-><init>(Lcom/estrongs/android/ui/a/ci;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->d:Landroid/widget/ImageView;

    const v2, 0x7f020241

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ci;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/ci;->c:Landroid/os/Handler;

    invoke-virtual {v5, v1, v2}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/content/Context;Landroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/estrongs/android/ui/a/co;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/estrongs/android/ui/a/co;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5
.end method
