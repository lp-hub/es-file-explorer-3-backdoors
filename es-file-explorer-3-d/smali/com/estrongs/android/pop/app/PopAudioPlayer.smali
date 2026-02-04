.class public Lcom/estrongs/android/pop/app/PopAudioPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Lcom/estrongs/android/ui/e/gh;


# static fields
.field private static L:[Ljava/lang/String;


# instance fields
.field private A:Lcom/estrongs/android/pop/app/ei;

.field private B:Lcom/estrongs/android/pop/app/AudioPlayerService;

.field private C:Landroid/widget/ImageView;

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Z

.field private final M:Landroid/content/BroadcastReceiver;

.field private final N:Landroid/content/BroadcastReceiver;

.field private O:I

.field private P:I

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/TextView;

.field private S:Lcom/estrongs/android/pop/app/a/a;

.field private T:Landroid/graphics/Bitmap;

.field private U:Lcom/estrongs/android/ui/view/v;

.field private V:I

.field private W:Landroid/os/Handler;

.field private X:Landroid/content/ServiceConnection;

.field private Y:Landroid/graphics/Rect;

.field a:I

.field b:I

.field protected c:I

.field protected d:I

.field e:Z

.field f:Lcom/estrongs/android/widget/av;

.field private g:Lcom/estrongs/android/pop/app/ek;

.field private h:Lcom/estrongs/android/pop/q;

.field private i:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/estrongs/android/ui/d/b;

.field private o:Landroid/view/View;

.field private p:Lcom/estrongs/android/ui/view/DragListView;

.field private q:Lcom/estrongs/android/ui/view/az;

.field private r:Lcom/estrongs/android/ui/e/o;

.field private s:Lcom/estrongs/android/ui/e/j;

.field private t:Lcom/estrongs/android/ui/e/er;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/Button;

.field private y:Lcom/estrongs/android/ui/b/de;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/cy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cy;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/ek;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:I

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    new-instance v0, Lcom/estrongs/android/pop/app/do;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/do;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/dx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dx;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    iput v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/av;

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    new-instance v0, Lcom/estrongs/android/pop/app/ds;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ds;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dw;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Landroid/content/ServiceConnection;

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v1, 0x7f0802fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/cz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v1, 0x7f0802fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/da;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/da;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v1, 0x7f0802fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/db;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/db;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v1, 0x7f0802fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/dc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dc;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 0

    return-void
.end method

.method private C()V
    .locals 3

    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/estrongs/android/ui/view/az;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/view/az;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    new-instance v0, Lcom/estrongs/android/ui/e/o;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/o;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    const-string v1, "playing"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    const-string v1, "playing"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lcom/estrongs/android/ui/e/j;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/j;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    new-instance v0, Lcom/estrongs/android/ui/e/er;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/er;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/er;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    const-string v1, "playlist_edit"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/er;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    return-void
.end method

.method private D()V
    .locals 2

    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/dd;

    invoke-direct {v1, p0, v0, p0, v0}, Lcom/estrongs/android/pop/app/dd;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Lcom/estrongs/android/ui/d/b;

    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/dh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dh;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    return-void
.end method

.method private F()V
    .locals 2

    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dj;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/view/View;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Landroid/widget/ImageView;

    new-instance v0, Lcom/estrongs/android/pop/app/dk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dk;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private G()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Lcom/estrongs/android/ui/b/de;

    if-nez v0, :cond_0

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b01c2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/estrongs/android/ui/b/de;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/b/de;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Lcom/estrongs/android/ui/b/de;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Lcom/estrongs/android/ui/b/de;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/de;->show()V

    goto :goto_0
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Lcom/estrongs/android/ui/b/de;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Lcom/estrongs/android/ui/b/de;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/de;->dismiss()V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Landroid/view/View;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/ImageView;

    new-instance v0, Lcom/estrongs/android/ui/view/DragListView;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/ui/view/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    new-instance v1, Lcom/estrongs/android/pop/app/dp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dp;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/DragListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/ui/view/v;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/v;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/dq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dq;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/av;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/av;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Lcom/estrongs/android/widget/av;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    new-instance v1, Lcom/estrongs/android/pop/app/dr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dr;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/o;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/o;->c(I)V

    return-void
.end method

.method private K()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private M()V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private N()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/AudioPlayerService;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ei;)Lcom/estrongs/android/pop/app/ei;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/pop/app/ei;

    return-object p1
.end method

.method private a(IZ)V
    .locals 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Z

    return p1
.end method

.method private a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Exception;

    new-array v1, v1, [[Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/pop/app/ec;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/estrongs/android/pop/app/ec;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;[[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    aget-object v0, v0, v4

    throw v0

    :cond_1
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    return-void
.end method

.method private b([Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    const-string v3, ".m3u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(II)V

    return-void
.end method

.method private c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(II)V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(II)V

    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private e(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iput v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    invoke-direct {p0, p2, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/pop/app/ei;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/pop/app/ei;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ei;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->j()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->i()V

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/pop/app/ei;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ei;->a()V

    iput p2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h:Lcom/estrongs/android/pop/q;

    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 5

    div-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(II)V

    if-nez p1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/er;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/er;->d(I)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method private g(II)V
    .locals 4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/az;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/az;

    return-object v0
.end method

.method private h(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Lcom/estrongs/android/ui/d/b;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Z

    return v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ei;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/pop/app/ei;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M()V

    return-void
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K()V

    return-void
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ek;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/ek;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()V

    return-void
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Ljava/lang/String;

    return-object v0
.end method

.method public static w()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Z

    return v0
.end method

.method private y()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/ed;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/ed;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D()V

    return-void
.end method

.method private z()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I()V

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/eg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eg;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 5

    const v4, 0x7f0802fd

    const v3, 0x7f0802fc

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const v1, 0x7f0802fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/v;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x1

    const v3, -0x777778

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/j;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/graphics/Bitmap;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/a/af;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/af;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/pop/app/a/af;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/aj;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->b()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ag;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/ag;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/pop/app/a/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/af;",
            ">;",
            "Lcom/estrongs/android/pop/app/a/ag;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-ne v0, p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/a/ag;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(II)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ag;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/app/a/ag;->a(Lcom/estrongs/android/pop/app/a/af;J)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/af;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/a/ag;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void

    :cond_3
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p1}, Lcom/estrongs/android/pop/app/a/ag;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/estrongs/android/ui/view/v;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->notifyDataSetChanged()V

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelection(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:I

    add-int/lit8 v2, v1, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/view/DragListView;

    iget v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelection(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v0}, Lcom/estrongs/android/ui/view/v;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/dl;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/dl;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/a/a;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Landroid/widget/ImageView;

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/j;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/af;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/j;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/app/dm;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/dm;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Z)V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Z

    return-void
.end method

.method public g()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->p()I

    move-result v3

    const/16 v4, 0x1388

    if-le v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(I)V

    return-void
.end method

.method public i()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->E()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    goto :goto_0
.end method

.method public k()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    :cond_0
    return-void
.end method

.method public n()Lcom/estrongs/android/pop/app/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/aj;->b(Lcom/estrongs/android/pop/app/a/ag;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->k()Lcom/estrongs/android/ui/pcs/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/d;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Landroid/graphics/Rect;

    invoke-static {}, Lcom/estrongs/android/ui/g/e;->d()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0b0411

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h:Lcom/estrongs/android/pop/q;

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "hasplaylist"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v0, 0x0

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    array-length v7, v2

    if-ge v0, v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, ".m3u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    aget-object v7, v2, v0

    invoke-direct {p0, v7}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Z

    goto :goto_1

    :cond_2
    aget-object v7, v2, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, v9, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    :goto_4
    return-void

    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_5
    :goto_5
    const-string v2, "showlist"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Z

    if-nez v0, :cond_c

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Z

    if-nez v2, :cond_c

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Ljava/lang/String;

    :cond_6
    :goto_6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->h()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G()V

    new-instance v1, Lcom/estrongs/android/pop/app/dy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dy;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/aj;->a(Lcom/estrongs/android/pop/app/a/ak;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ea;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/ea;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/aj;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ea;->start()V

    :cond_8
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->d()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lcom/estrongs/android/pop/app/eb;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/eb;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/aj;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/eb;->start()V

    :cond_9
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "hasplaylist"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ".m3u"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    invoke-static {p0, v9, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    goto/16 :goto_4

    :cond_b
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_c
    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_2
    move-exception v7

    goto/16 :goto_3

    :cond_d
    move-object v0, v2

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/ek;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    :goto_1
    :try_start_0
    const-string v0, "Market"

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->z()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->o()V

    goto :goto_0

    :cond_4
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/v;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r()V

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "hasplaylist"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    const-string v4, ".m3u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b0411

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_5
    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Ljava/lang/String;

    :cond_6
    :goto_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    const v0, 0x7f0b0411

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_8
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/aj;->b()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/ag;->d()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/a/ag;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    const v0, 0x7f0b0268

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/ek;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/ek;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    :cond_0
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void
.end method

.method p()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    :cond_0
    return-void
.end method

.method public q()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Landroid/graphics/Rect;

    return-object v0
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/v;->a(Z)V

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/af;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/estrongs/android/pop/app/a/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    invoke-direct {p0, v3, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method public v()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/ui/view/v;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->f()V

    goto :goto_1
.end method
