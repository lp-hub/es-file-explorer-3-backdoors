.class public Lcom/estrongs/android/ui/b/ga;
.super Ljava/lang/Object;


# static fields
.field private static r:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/b/ag;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/estrongs/android/util/x;

.field private q:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Landroid/os/Handler;

.field private w:Landroid/content/DialogInterface$OnClickListener;

.field private x:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/b/ga;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/b/gh;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->c:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->k:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    iput v2, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/b/ga;->n:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/b/ga;->o:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/b/ga;->q:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->u:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/b/gb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gb;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->v:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/b/gc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gc;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->w:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/b/gd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gd;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    iget-object v0, p3, Lcom/estrongs/android/ui/b/gh;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    iget-object v1, p3, Lcom/estrongs/android/ui/b/gh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->c:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->k:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    iput v2, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/b/ga;->n:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/b/ga;->o:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/b/ga;->q:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->u:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/b/gb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gb;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->v:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/b/gc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gc;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->w:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/b/gd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/gd;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    iput-object p3, p0, Lcom/estrongs/android/ui/b/ga;->u:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ga;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    return p1
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/estrongs/android/ui/b/gh;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/ui/b/ga;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/b/gh;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ga;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ga;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ga;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/util/x;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/util/x;->c:I

    iput-object p0, v0, Lcom/estrongs/android/util/x;->d:Ljava/lang/Object;

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/ui/b/gg;

    invoke-direct {v1}, Lcom/estrongs/android/ui/b/gg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ga;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ga;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ga;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/ga;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/ga;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/estrongs/android/ui/b/gh;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/estrongs/android/ui/b/gh;

    invoke-direct {v3}, Lcom/estrongs/android/ui/b/gh;-><init>()V

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/b/gh;->a:Ljava/lang/String;

    const-string v1, "market"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/b/gh;->b:Ljava/lang/String;

    const-string v1, "urls"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    instance-of v1, v0, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/estrongs/android/ui/b/gh;->c:Ljava/util/List;

    check-cast v0, Lorg/json/simple/JSONArray;

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/estrongs/android/ui/b/gh;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/estrongs/android/ui/b/gh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/ga;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/b/ga;->n:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/ga;)Lcom/estrongs/android/util/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    return-object v0
.end method

.method private c()V
    .locals 4

    const v3, 0x7f0b0114

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0801cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0801ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->c:Landroid/widget/ProgressBar;

    const v0, 0x7f0801d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0801d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0801d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0801cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v0, 0x7f0801d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->k:Landroid/widget/ImageView;

    const v0, 0x7f0801d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->j:Landroid/widget/TextView;

    const v0, 0x7f0801d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ga;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/b/ge;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ge;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->d()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const v4, 0x7f0b0006

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ga;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0122

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ga;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/ga;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0123

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0124

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    const v1, 0x7f0b0114

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    const v1, 0x7f0b0007

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0125

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b007d

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->n:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0126

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    const v1, 0x7f0b0117

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0118

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/ga;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ga;->b()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/util/x;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/x;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/x;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    new-instance v1, Lcom/estrongs/android/ui/b/gf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/gf;-><init>(Lcom/estrongs/android/ui/b/ga;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/aa;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->p:Lcom/estrongs/android/util/x;

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->c()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "com.android.vending"

    aput-object v0, v4, v1

    const-string v0, "com.qihoo.appstore"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v5, "cn.goapk.market"

    aput-object v5, v4, v0

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    :try_start_0
    aget-object v5, v4, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v2

    :cond_0
    return v1

    :catch_0
    move-exception v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/ga;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->l:I

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/ga;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->m:I

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/ga;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ga;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/ga;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/b/ga;->n:I

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/b/ga;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ga;->q:Z

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/b/ga;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ga;->o:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/b/ga;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->v:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ga;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
