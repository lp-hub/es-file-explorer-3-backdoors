.class public Lcom/estrongs/android/ui/b/co;
.super Lcom/estrongs/android/ui/b/ag;


# static fields
.field private static a:Lcom/estrongs/android/ui/b/co;


# instance fields
.field private b:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/b/co;->a:Lcom/estrongs/android/ui/b/co;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/co;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/co;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/co;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/co;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/co;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/co;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/co;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0803af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/estrongs/android/ui/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/co;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/estrongs/android/ui/b/cp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/cp;-><init>(Lcom/estrongs/android/ui/b/co;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
