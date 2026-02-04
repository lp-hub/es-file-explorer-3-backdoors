.class Lcom/estrongs/android/pop/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Lcom/estrongs/android/util/TypedMap;

.field final synthetic c:Lcom/estrongs/android/pop/view/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/au;->c:Lcom/estrongs/android/pop/view/at;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/au;->b:Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/au;->c:Lcom/estrongs/android/pop/view/at;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/fs/g;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/au;->b:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/at;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/au;->c:Lcom/estrongs/android/pop/view/at;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()V

    :cond_0
    return-void
.end method
