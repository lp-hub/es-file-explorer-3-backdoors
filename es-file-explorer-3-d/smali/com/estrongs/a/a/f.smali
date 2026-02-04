.class public Lcom/estrongs/a/a/f;
.super Lcom/estrongs/a/a/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/estrongs/android/util/TypedMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a/c;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/a/a/f;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
