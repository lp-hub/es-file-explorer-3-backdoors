.class Lcom/estrongs/android/pop/app/ee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ed;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ed;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/ef;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ef;-><init>(Lcom/estrongs/android/pop/app/ee;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
