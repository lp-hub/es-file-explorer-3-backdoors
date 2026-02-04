.class Lcom/estrongs/android/view/t;
.super Lcom/estrongs/android/view/x;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;Lcom/estrongs/android/view/n;Ljava/util/List;ZLjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/t;->c:Lcom/estrongs/android/view/n;

    iput-object p5, p0, Lcom/estrongs/android/view/t;->a:Ljava/util/List;

    iput-boolean p6, p0, Lcom/estrongs/android/view/t;->b:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/x;-><init>(Lcom/estrongs/android/view/n;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/t;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/t;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/n;->b(Lcom/estrongs/android/view/x;)V

    return-void
.end method


# virtual methods
.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/u;-><init>(Lcom/estrongs/android/view/t;)V

    return-object v0
.end method
