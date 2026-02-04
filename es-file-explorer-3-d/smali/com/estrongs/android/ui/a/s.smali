.class public Lcom/estrongs/android/ui/a/s;
.super Landroid/widget/BaseExpandableListAdapter;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private d:[Ljava/lang/String;

.field private e:Lcom/estrongs/android/pop/q;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/SharedPreferences$Editor;

.field private final j:Ljava/text/Collator;

.field private k:Lcom/estrongs/android/util/a;

.field private l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/a/cd;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;

.field private o:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "www.estrongs.com"

    sput-object v0, Lcom/estrongs/android/ui/a/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->b:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->j:Ljava/text/Collator;

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->k:Lcom/estrongs/android/util/a;

    new-instance v0, Lcom/estrongs/android/ui/a/t;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/t;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->l:Ljava/util/Comparator;

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->o:Lcom/estrongs/android/ui/theme/al;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->e:Lcom/estrongs/android/pop/q;

    const-string v0, "new_navi"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->h:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->i:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f020008

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->g:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020009

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/s;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/s;)Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->j:Ljava/text/Collator;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 5

    const/16 v4, 0x8

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/a/br;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/br;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/a/bq;

    invoke-direct {v2}, Lcom/estrongs/android/ui/a/bq;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080270

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f08026a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080272

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08026d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/a/bs;

    invoke-direct {v1}, Lcom/estrongs/android/ui/a/bs;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x1000101c

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/ui/a/cd;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/d;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/b;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->a()Z

    move-result v2

    :goto_1
    new-instance v4, Lcom/estrongs/android/ui/a/a;

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iget-object v6, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    new-instance v7, Lcom/estrongs/android/ui/a/bp;

    invoke-direct {v7, p0, v0}, Lcom/estrongs/android/ui/a/bp;-><init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-boolean v2, v4, Lcom/estrongs/android/ui/a/a;->e:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/a/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;

    iget-object v0, p1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/estrongs/fs/l;->E:Lcom/estrongs/fs/l;

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/estrongs/fs/l;->D:Lcom/estrongs/fs/l;

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_4
    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method public static b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0b01df

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/a/bt;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/a/bt;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/theme/al;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->e:Lcom/estrongs/android/pop/q;

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 11

    const/4 v10, 0x0

    const v9, 0x7f020200

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/s;->b()V

    new-instance v0, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/s;->a(Lcom/estrongs/android/ui/a/cd;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    aget-object v0, v0, v8

    iput-object v0, v1, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/bz;

    const v3, 0x7f020206

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/by;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/by;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/bz;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/m;->j:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f02020b

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b038f

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ca;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ca;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/ae;

    invoke-direct {p0, v9}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b001a

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/cb;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/cb;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/ae;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v4, Lcom/estrongs/android/ui/a/a;

    const v5, 0x7f020210

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/ui/a/cc;

    invoke-direct {v7, p0, v0}, Lcom/estrongs/android/ui/a/cc;-><init>(Lcom/estrongs/android/ui/a/s;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f02020c

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/u;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/u;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "gallery://local/buckets/"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020209

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0059

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/v;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/v;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "music://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020208

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b005c

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/w;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/w;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "video://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201fc

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/x;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/x;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "book://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020207

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b004d

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/y;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/y;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "smb://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->P:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201fe

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b004f

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/z;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/z;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "net://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v1, Lcom/estrongs/android/pop/m;->R:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f02020a

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0446

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/aa;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/aa;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "pcs://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020202

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ab;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ab;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "ftp://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201fb

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ac;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ac;-><init>(Lcom/estrongs/android/ui/a/s;)V

    const-string v6, "bt://"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->d:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    sget-boolean v1, Lcom/estrongs/android/pop/m;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201fa

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b00a3

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ad;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ad;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v1, Lcom/estrongs/android/pop/m;->O:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0, v9}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0379

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ag;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ag;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v1, Lcom/estrongs/android/pop/m;->v:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020211

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b02c0

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ah;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ah;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201ff

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0131

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ai;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ai;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->Z:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f02020e

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b030d

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/aj;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/aj;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v1, Lcom/estrongs/android/pop/m;->x:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020201

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b00a2

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ak;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ak;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v1, Lcom/estrongs/android/pop/m;->aa:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0201fd

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0054

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/al;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/al;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v1, Lcom/estrongs/android/pop/m;->U:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020205

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0053

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/am;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/am;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-boolean v1, Lcom/estrongs/android/pop/m;->ab:Z

    if-nez v1, :cond_d

    new-instance v1, Lcom/estrongs/android/ui/a/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/an;-><init>(Lcom/estrongs/android/ui/a/s;)V

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/aq;

    const v4, 0x7f02020d

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b042c

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/estrongs/android/ui/a/aq;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v8}, Lcom/estrongs/android/ui/a/aq;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/ap;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/ap;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v1, Lcom/estrongs/android/pop/m;->w:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/ay;

    const v3, 0x7f02020f

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ax;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ax;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/ay;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/a/ay;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/as;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/as;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-boolean v1, Lcom/estrongs/android/pop/m;->M:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/bb;

    const v3, 0x7f020203

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b03fe

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ba;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ba;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/bb;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/a/bb;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/az;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/az;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/bd;

    const v3, 0x7f020204

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b01e2

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v10}, Lcom/estrongs/android/ui/a/bd;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/a/bd;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/bc;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bc;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/bf;

    const v3, 0x7f020212

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0400

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/s;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v10}, Lcom/estrongs/android/ui/a/bf;-><init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/a/bf;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/be;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/be;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/util/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->k:Lcom/estrongs/android/util/a;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->h:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(II)Lcom/estrongs/android/ui/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cd;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/estrongs/android/ui/a/cd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cd;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cd;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/a;

    const v2, 0x7f020210

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/a/s;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/a/af;

    invoke-direct {v4, p0, p1}, Lcom/estrongs/android/ui/a/af;-><init>(Lcom/estrongs/android/ui/a/s;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/a/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/ar;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->l:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/util/at;->a(Ljava/io/File;)Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    move-result-object v0

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->deleteAble:Z

    iget-object v4, p0, Lcom/estrongs/android/ui/a/s;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cd;

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/a/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/bg;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/a/s;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v1, 0x7f030075

    const/4 v3, 0x0

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_2
    move-object v2, v0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/a/s;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    return-object v2

    :cond_3
    const v0, 0x7f03007b

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    const v0, 0x7f080254

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080255

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v4, Lcom/estrongs/android/ui/a/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080253

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, v4, Lcom/estrongs/android/ui/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080248

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/estrongs/android/ui/a/bh;

    invoke-direct {v3, p0, v4}, Lcom/estrongs/android/ui/a/bh;-><init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/a/bi;

    invoke-direct {v0, p0, v4, p1, p2}, Lcom/estrongs/android/ui/a/bi;-><init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/ui/a/a;II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v0, v4, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/estrongs/android/ui/a/bn;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/ui/a/bn;-><init>(Lcom/estrongs/android/ui/a/s;II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    const v0, 0x7f0800b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/estrongs/android/ui/a/s;->o:Lcom/estrongs/android/ui/theme/al;

    const v6, 0x7f09001a

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08002f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, v4, Lcom/estrongs/android/ui/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/SimpleSwitchButton;

    iget-boolean v5, v4, Lcom/estrongs/android/ui/a/a;->f:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->a()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setChecked(Z)V

    iget-object v5, v4, Lcom/estrongs/android/ui/a/a;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    :cond_7
    new-instance v0, Lcom/estrongs/android/ui/a/bl;

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/estrongs/android/ui/a/bl;-><init>(Lcom/estrongs/android/ui/a/s;IILcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setVisibility(I)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/estrongs/android/ui/a/bo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/bo;-><init>(Lcom/estrongs/android/ui/a/s;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_b
    move-object v0, p4

    goto/16 :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/s;->a(I)Lcom/estrongs/android/ui/a/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/s;->a(I)Lcom/estrongs/android/ui/a/cd;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/s;->a(I)Lcom/estrongs/android/ui/a/cd;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/s;->a(I)Lcom/estrongs/android/ui/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f020007

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/s;->a(I)Lcom/estrongs/android/ui/a/cd;

    move-result-object v1

    const v0, 0x7f0800b4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/cd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080205

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/s;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cd;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/s;->a(Lcom/estrongs/android/ui/a/cd;)V

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->i:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->i:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/s;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
