.class public Lcom/estrongs/android/pop/app/b/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->d:I

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/h;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/b/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->c:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/b/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->d:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/b/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/h;->e:I

    goto :goto_0
.end method
