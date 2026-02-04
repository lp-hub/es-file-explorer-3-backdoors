.class public Lcom/estrongs/android/widget/bp;
.super Ljava/lang/Object;


# instance fields
.field protected b:I

.field protected c:Lcom/estrongs/android/widget/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/bp;->b:I

    new-instance v0, Lcom/estrongs/android/widget/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bq;-><init>(Lcom/estrongs/android/widget/bp;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bp;->c:Lcom/estrongs/android/widget/aa;

    new-instance v0, Lcom/estrongs/android/widget/br;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/br;-><init>(Lcom/estrongs/android/widget/bp;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bp;->c:Lcom/estrongs/android/widget/aa;

    return-void
.end method
