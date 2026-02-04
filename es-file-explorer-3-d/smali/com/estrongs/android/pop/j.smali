.class Lcom/estrongs/android/pop/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/s;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/g;

.field final synthetic b:Lcom/estrongs/android/pop/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/h;Lcom/estrongs/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/h;

    iput-object p2, p0, Lcom/estrongs/android/pop/j;->a:Lcom/estrongs/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/j;->a:Lcom/estrongs/a/a/g;

    iput p1, v0, Lcom/estrongs/a/a/g;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/j;->a:Lcom/estrongs/a/a/g;

    iput-boolean p2, v0, Lcom/estrongs/a/a/g;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/h;

    iget-object v4, v4, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void
.end method
