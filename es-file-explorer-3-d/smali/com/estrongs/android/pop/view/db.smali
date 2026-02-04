.class Lcom/estrongs/android/pop/view/db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;

.field final synthetic b:Lcom/estrongs/android/pop/view/da;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/da;Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/db;->b:Lcom/estrongs/android/pop/view/da;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/db;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/db;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->g()V

    return-void
.end method
