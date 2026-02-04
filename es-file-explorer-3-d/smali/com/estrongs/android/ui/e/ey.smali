.class Lcom/estrongs/android/ui/e/ey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/br;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/ex;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ex;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ey;->b:Lcom/estrongs/android/ui/e/ex;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ey;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ey;->b:Lcom/estrongs/android/ui/e/ex;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ex;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ey;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Ljava/util/List;)V

    return-void
.end method
