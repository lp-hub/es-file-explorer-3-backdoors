.class public Lcom/estrongs/android/view/bu;
.super Lcom/estrongs/android/view/ar;


# static fields
.field private static am:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field private static an:Lcom/estrongs/android/util/TypedMap;


# instance fields
.field private a:Landroid/view/View;

.field ac:Lcom/estrongs/android/view/cf;

.field private ah:Z

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Z

.field private al:Z

.field private ao:Z

.field private ap:Ljava/lang/String;

.field b:I

.field protected c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/bu;->am:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/bu;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ah:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->ai:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->aj:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ak:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->al:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ao:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->ap:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cd;-><init>(Lcom/estrongs/android/view/bu;)V

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->e:Lcom/estrongs/android/widget/c;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->e:Lcom/estrongs/android/widget/c;

    new-instance v1, Lcom/estrongs/android/view/ce;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ce;-><init>(Lcom/estrongs/android/view/bu;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/widget/d;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVerticalSpacing(I)V

    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bu;->l(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bv;-><init>(Lcom/estrongs/android/view/bu;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->ao:Z

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->ap:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/g;Z)Lcom/estrongs/fs/g;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "need_210_thumbnail"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/bu;->am:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "need_210_thumbnail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/android/view/bu;->am:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    move-object p0, v6

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    if-nez v0, :cond_5

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "to"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->az(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "pictures"

    :goto_1
    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/estrongs/android/view/bu;->an:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-eqz v0, :cond_6

    const-string v1, "need_210_thumbnail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/view/bu;->am:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    move-object p0, v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "mine"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    move-object v1, p0

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/view/bu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->ah:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/bu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/bu;->ah:Z

    return p1
.end method

.method private ao()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/view/bu;->c:Z

    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bu;->l(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "per_page"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "page"

    iget v2, p0, Lcom/estrongs/android/view/bu;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/estrongs/android/view/bu;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "max_id"

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-super {p0, v4}, Lcom/estrongs/android/view/ar;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private ap()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/bu;->ao:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ao:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/bu;->ap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/bu;->ap:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/view/bu;->ao:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ao:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/view/bu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->al:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/bu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->ak:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/bu;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/bu;->ao()V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/cf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cf;-><init>(Lcom/estrongs/android/view/bu;)V

    iput-object v0, p0, Lcom/estrongs/android/view/bu;->ac:Lcom/estrongs/android/view/cf;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->ac:Lcom/estrongs/android/view/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->ac:Lcom/estrongs/android/view/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected S()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    iput p1, p0, Lcom/estrongs/android/view/bu;->k:I

    iget-object v3, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    invoke-static {v4}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_1

    :goto_0
    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v4, v3

    int-to-float v3, v3

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v4

    if-eqz v2, :cond_5

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/high16 v0, 0x41d80000    # 27.0f

    div-float v0, v3, v0

    const v1, 0x3e99999a    # 0.3f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method protected a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/t;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->b()Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/estrongs/android/view/bu;->X:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/bu;->c:Z

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->u()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/bu;->c(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bu;->b(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/estrongs/android/view/bu;->b:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/view/bu;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/bu;->b:I

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->ah:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0371

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_2
    iput-boolean v3, p0, Lcom/estrongs/android/view/bu;->ak:Z

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/view/bu;->ah:Z

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/view/cc;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/cc;-><init>(Lcom/estrongs/android/view/bu;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ai:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/view/bu;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->aj:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/estrongs/android/view/bu;->ak:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ai:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ai:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/bu;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->aj:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->ak:Z

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pictures"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mine"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/bu;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->ak:Z

    if-nez p2, :cond_5

    new-instance p2, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p2}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    :cond_5
    const-string v0, "per_page"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "page"

    iget v1, p0, Lcom/estrongs/android/view/bu;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/estrongs/android/view/bu;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "max_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    sget-object v0, Lcom/estrongs/android/view/bu;->am:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public ad()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ac:Lcom/estrongs/android/view/cf;

    return-object v0
.end method

.method protected al()I
    .locals 1

    const v0, 0x7f030053

    return v0
.end method

.method public am()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "per_page"

    div-int/lit8 v5, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "page"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "max_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/estrongs/android/view/bu;->ak:Z

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/bu;->b(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected b(Lcom/estrongs/android/d/k;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/android/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    const v1, -0x5a5a5b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/d/k;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/view/bu;->ak:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->X:Z

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/bu;->x:Lcom/estrongs/fs/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/bu;->x:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->n()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->al:Z

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->b(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected c(Ljava/util/List;)V
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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->Q:Lcom/estrongs/fs/h;

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/view/bu;->Q:Lcom/estrongs/fs/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v2, v0}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->B:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/ar;->d()I

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/bu;->b:I

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->e()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Lcom/estrongs/fs/g;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->f()Lcom/estrongs/fs/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->x:Lcom/estrongs/fs/g;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->az(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "SP://"

    :cond_2
    new-instance v1, Lcom/estrongs/fs/m;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/fs/g;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected k(I)Lcom/estrongs/fs/g;
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->k(I)Lcom/estrongs/fs/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/fs/g;Z)Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SP://"

    iget-object v1, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/bu;->ap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->K:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->K:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/bu;->M:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/view/ar;->l()V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->w:Ljava/lang/String;

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/view/bu;->ap()Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/bu;->ao:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/bu;->M:Z

    const-string v0, "SP://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected r()I
    .locals 1

    const v0, 0x7f030054

    return v0
.end method
