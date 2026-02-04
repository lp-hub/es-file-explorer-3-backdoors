.class public Lcom/estrongs/android/pop/app/diskusage/e;
.super Lcom/estrongs/android/view/ar;


# static fields
.field private static final ah:Ljava/lang/String;

.field public static c:Landroid/util/DisplayMetrics;


# instance fields
.field protected a:Lcom/estrongs/fs/c/b;

.field private aA:J

.field private aB:Z

.field private aC:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private aD:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private aE:Lcom/estrongs/android/ui/a/g;

.field private aF:J

.field private aG:Landroid/widget/ListView;

.field private aH:Landroid/os/Handler;

.field private ac:Z

.field private ai:Ljava/lang/Object;

.field private aj:Z

.field private ak:Z

.field private al:J

.field private am:Ljava/io/File;

.field private an:Ljava/io/File;

.field private ao:Lcom/estrongs/android/pop/app/diskusage/b;

.field private ap:Lcom/estrongs/android/pop/app/diskusage/b;

.field private aq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/diskusage/b;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Lcom/estrongs/android/widget/az;

.field private as:J

.field private at:J

.field private au:J

.field private av:J

.field private aw:J

.field private ax:J

.field private ay:J

.field private az:J

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->ah:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->c:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 6

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ac:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ai:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aj:Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/f;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->a:Lcom/estrongs/fs/c/b;

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aB:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aD:Ljava/util/Stack;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/g;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->af:Landroid/view/LayoutInflater;

    const v3, 0x7f030038

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    const v2, 0x7f02003a

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->ah:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->q()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->am:Ljava/io/File;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    return-object v0
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    return-object v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/diskusage/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    return v0
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/diskusage/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    return v0
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    return-object v0
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/view/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    return-object v0
.end method

.method static synthetic H(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/widget/az;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->p()Lcom/estrongs/android/widget/az;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aF:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;J)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/android/pop/app/diskusage/b;)Lcom/estrongs/android/pop/app/diskusage/b;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/android/ui/a/g;)Lcom/estrongs/android/ui/a/g;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/android/widget/az;)Lcom/estrongs/android/widget/az;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/fs/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Lcom/estrongs/fs/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->k(Z)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/c/a;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/c/a;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/fs/c/a;Lcom/estrongs/fs/c/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    return-void
.end method

.method private a(Lcom/estrongs/fs/c/a;Lcom/estrongs/fs/c/a;)V
    .locals 4

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->a:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->a:J

    iget v0, p1, Lcom/estrongs/fs/c/a;->b:I

    iget v1, p2, Lcom/estrongs/fs/c/a;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/c/a;->b:I

    iget v0, p1, Lcom/estrongs/fs/c/a;->c:I

    iget v1, p2, Lcom/estrongs/fs/c/a;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/c/a;->c:I

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->d:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->d:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->e:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->e:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->f:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->f:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->g:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->h:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->h:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->i:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->i:J

    return-void
.end method

.method private al()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aj:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->am:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->r()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aD:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aD:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aj:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/io/File;)Lcom/estrongs/fs/c/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aD:Ljava/util/Stack;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private am()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->p()Lcom/estrongs/android/widget/az;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/az;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    :cond_1
    return-void
.end method

.method private ao()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->p()Lcom/estrongs/android/widget/az;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aH:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private ap()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/az;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    :cond_0
    return-void
.end method

.method private aq()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/az;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ar()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ai:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/b;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aH:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/n;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    return-wide p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/widget/az;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/fs/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/fs/c/a;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/c/a;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/c/a;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Lcom/estrongs/fs/c/a;Lcom/estrongs/fs/c/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    iget-wide v2, p1, Lcom/estrongs/fs/c/a;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    return-void
.end method

.method private b(Lcom/estrongs/fs/c/a;Lcom/estrongs/fs/c/a;)V
    .locals 4

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->a:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->a:J

    iget v0, p1, Lcom/estrongs/fs/c/a;->b:I

    iget v1, p2, Lcom/estrongs/fs/c/a;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/c/a;->b:I

    iget v0, p1, Lcom/estrongs/fs/c/a;->c:I

    iget v1, p2, Lcom/estrongs/fs/c/a;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/c/a;->c:I

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->d:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->d:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->e:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->e:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->f:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->f:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->g:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->h:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->h:J

    iget-wide v0, p1, Lcom/estrongs/fs/c/a;->i:J

    iget-wide v2, p2, Lcom/estrongs/fs/c/a;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/c/a;->i:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "du://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "du://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/estrongs/android/pop/app/diskusage/e;->ah:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aB:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/b;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->a:Lcom/estrongs/fs/c/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Lcom/estrongs/fs/c/b;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/b;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aF:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/b;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->p()Lcom/estrongs/android/widget/az;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/az;->a(J)V

    :cond_4
    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->g()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/az;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/b;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/b;->a(J)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aB:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    return-wide v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    return-wide p1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->am()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->aq()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/diskusage/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    return-wide v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->ap()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->al()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->r()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    return-object v0
.end method

.method private k(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v1, v0, v6

    aget-wide v3, v0, v5

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    aget-wide v1, v0, v6

    aget-wide v3, v0, v7

    sub-long/2addr v1, v3

    aget-wide v3, v0, v5

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    aget-wide v1, v0, v5

    iput-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aF:J

    aget-wide v1, v0, v7

    aget-wide v3, v0, v5

    mul-long v0, v1, v3

    move-wide v3, v0

    :goto_0
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080151

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    invoke-static {v5, v6}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    invoke-static {v5, v6}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    sub-long/2addr v0, v2

    move-wide v3, v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/ui/a/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    return-object v0
.end method

.method private n()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/c/a;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    iget-wide v4, v0, Lcom/estrongs/fs/c/a;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    return-object v0
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->k(Z)V

    return-void
.end method

.method private p()Lcom/estrongs/android/widget/az;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/estrongs/android/widget/az;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/widget/az;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/widget/bb;

    invoke-direct {v1}, Lcom/estrongs/android/widget/bb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->a(Lcom/estrongs/android/widget/bd;)V

    const v1, 0x7f0b0080

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->setCancelable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/k;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->a(Lcom/estrongs/android/widget/bc;)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/l;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/az;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ai:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private q()V
    .locals 3

    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b005e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/m;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ap:Lcom/estrongs/android/pop/app/diskusage/b;

    return-object v0
.end method

.method private r()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/a/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/a/g;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/b;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->c(Z)[J

    return-void
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/diskusage/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    return-wide v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/diskusage/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aB:Z

    return v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->n()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->ar()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aG:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ac:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/o;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/diskusage/o;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;Ljava/util/List;)V

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/p;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/diskusage/p;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-static {v0, p1, v1, v2}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    if-nez v0, :cond_1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/g;->a(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->e()V

    goto :goto_0
.end method

.method public a_()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    return-void
.end method

.method public b()Lcom/estrongs/fs/g;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcom/estrongs/fs/g;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/g;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aq:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ak:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->ao()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/h;

    const-string v2, "DiskUsage-Counter"

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/h;-><init>(Lcom/estrongs/android/pop/app/diskusage/e;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->start()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/g;->getCount()I

    move-result v3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v5, v0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->v()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/g;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Lcom/estrongs/android/view/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Lcom/estrongs/android/view/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/aq;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x4

    if-ne p1, v0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->z()[I

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    aget v0, v3, v0

    move v1, v0

    :goto_3
    const/4 v0, 0x1

    aget v0, v3, v0

    if-gt v1, v0, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v5, v0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    if-ltz p1, :cond_3

    if-ge p1, v3, :cond_3

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public c(Z)[J
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_0
    new-array v1, v0, [J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->av:J

    aput-wide v3, v1, v2

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aw:J

    aput-wide v3, v1, v5

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ax:J

    aput-wide v3, v1, v7

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->az:J

    aput-wide v3, v1, v8

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ay:J

    aput-wide v3, v1, v0

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aA:J

    aput-wide v3, v1, v0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->as:J

    aput-wide v2, v1, v0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    aput-wide v3, v1, v6

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_1

    aget-wide v2, v1, v6

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/c/a;

    iget-wide v3, v0, Lcom/estrongs/fs/c/a;->d:J

    aput-wide v3, v1, v2

    iget-wide v2, v0, Lcom/estrongs/fs/c/a;->e:J

    aput-wide v2, v1, v5

    iget-wide v2, v0, Lcom/estrongs/fs/c/a;->f:J

    aput-wide v2, v1, v7

    iget-wide v2, v0, Lcom/estrongs/fs/c/a;->h:J

    aput-wide v2, v1, v8

    const/4 v2, 0x4

    iget-wide v3, v0, Lcom/estrongs/fs/c/a;->g:J

    aput-wide v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, v0, Lcom/estrongs/fs/c/a;->i:J

    aput-wide v3, v1, v2

    iget-wide v2, v0, Lcom/estrongs/fs/c/a;->a:J

    aput-wide v2, v1, v6

    move-object v0, v1

    goto :goto_1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/g;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/b;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aH:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic e(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(I)Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aE:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public f()Lcom/estrongs/fs/g;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->ar()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->b()Lcom/estrongs/fs/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->j()Lcom/estrongs/fs/g;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Z)V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ao:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/b;->c()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/q;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public j()Lcom/estrongs/fs/g;
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->al:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->am:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aj:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->am:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->z:Lcom/estrongs/android/view/br;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "du://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->aC:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/c/a;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->p()Lcom/estrongs/android/widget/az;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/az;->a()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    if-nez v0, :cond_4

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->at:J

    :goto_2
    invoke-virtual {v4, v2, v3}, Lcom/estrongs/android/widget/az;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    const v2, 0x7f0b0212

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/az;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ar:Lcom/estrongs/android/widget/az;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->au:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/az;->b(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/q;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->an:Ljava/io/File;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Ljava/io/File;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/estrongs/fs/c/a;->b()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method protected k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/e;->ah:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public l()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ac:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->ac:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/ar;->l()V

    return-void
.end method
