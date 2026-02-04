.class Lcom/estrongs/android/util/z;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/x;

    invoke-static {v0}, Lcom/estrongs/android/util/x;->a(Lcom/estrongs/android/util/x;)V

    return-void
.end method
