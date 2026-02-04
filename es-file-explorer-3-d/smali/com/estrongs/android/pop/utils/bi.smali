.class Lcom/estrongs/android/pop/utils/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;

.field final synthetic b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/pop/utils/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bg;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bi;->e:Lcom/estrongs/android/pop/utils/bg;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bi;->a:Lcom/estrongs/android/view/ar;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bi;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bi;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bi;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bi;->a:Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bi;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bj;-><init>(Lcom/estrongs/android/pop/utils/bi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
