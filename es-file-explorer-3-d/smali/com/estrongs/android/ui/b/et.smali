.class Lcom/estrongs/android/ui/b/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/i;

.field final synthetic b:Lcom/estrongs/android/ui/b/eo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/eo;Lcom/estrongs/android/ui/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/et;->b:Lcom/estrongs/android/ui/b/eo;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/et;->a:Lcom/estrongs/android/ui/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/et;->a:Lcom/estrongs/android/ui/a/i;

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/ui/a/i;->a(II)Lcom/estrongs/android/ui/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/et;->b:Lcom/estrongs/android/ui/b/eo;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/m;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/b/eo;->a(Lcom/estrongs/android/ui/b/eo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/et;->b:Lcom/estrongs/android/ui/b/eo;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/eo;->c()V

    const/4 v0, 0x0

    return v0
.end method
