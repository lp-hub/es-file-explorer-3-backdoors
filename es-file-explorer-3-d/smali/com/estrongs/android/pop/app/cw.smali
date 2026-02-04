.class public Lcom/estrongs/android/pop/app/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/pop/view/utils/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OpenRecomm;

.field private final b:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cw;->b:Ljava/text/Collator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->b:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/view/utils/t;Lcom/estrongs/android/pop/view/utils/t;)I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/pop/view/utils/t;

    check-cast p2, Lcom/estrongs/android/pop/view/utils/t;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cw;->a(Lcom/estrongs/android/pop/view/utils/t;Lcom/estrongs/android/pop/view/utils/t;)I

    move-result v0

    return v0
.end method
