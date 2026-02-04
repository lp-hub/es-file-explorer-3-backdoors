.class public Lcom/estrongs/android/d/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Lcom/estrongs/android/d/d;

.field private static d:Z

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/estrongs/android/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/d/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v8, 0x7f020043

    const/16 v7, 0x78

    const/16 v6, 0x18

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/d/d;->a:I

    sput-boolean v0, Lcom/estrongs/android/d/d;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    const/16 v0, 0x3c

    sput v0, Lcom/estrongs/android/d/d;->j:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dalvik.vm.heapsize"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    :goto_0
    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020096

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x40030

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x40031

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x40037

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x40040

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020097

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x40032

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x50039

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x4003c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020098

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x6004b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x70001

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02009a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const v2, 0x90001

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02015e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->c:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->i:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020044

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->j:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020045

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->k:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020046

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->l:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020047

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->m:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020042

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->n:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->r:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020147

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->s:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->t:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->u:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020142

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->v:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020143

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->w:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020149

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->x:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020146

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->y:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020141

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->z:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020145

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->C:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02014a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->A:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020148

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->B:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020144

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->p:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->G:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->H:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->I:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02002f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->K:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020030

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->L:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02026b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02015f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->O:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020160

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->P:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020161

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    const-string v2, "-1"

    const v3, 0x7f0200a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->E:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020162

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->d:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->f:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->e:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->g:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02029e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->h:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02029f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->D:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->o:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->F:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020172

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v6, :cond_3

    add-int/lit8 v0, v0, -0xa

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/estrongs/android/d/d;->j:I

    sget v0, Lcom/estrongs/android/d/d;->j:I

    if-le v0, v7, :cond_1

    sput v7, Lcom/estrongs/android/d/d;->j:I

    :cond_1
    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    sput v6, Lcom/estrongs/android/d/d;->j:I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    sput v6, Lcom/estrongs/android/d/d;->j:I

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/d/d;->a()V

    new-instance v0, Lcom/estrongs/android/d/e;

    iget-object v1, p0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/e;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/android/d/h;)V

    sget-boolean v0, Lcom/estrongs/android/pop/m;->H:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/d/b;

    iget-object v1, p0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/d/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/android/d/h;)V

    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/g;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/estrongs/android/d/d;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/d/d;->i(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    if-nez v0, :cond_4

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    sget v5, Lcom/estrongs/android/d/d;->j:I

    if-le v0, v5, :cond_6

    invoke-static {}, Lcom/estrongs/android/d/d;->d()V

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_7

    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    iget v2, v0, Lcom/estrongs/android/d/g;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/estrongs/android/d/g;->b:I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    aput-boolean v3, p2, v2

    goto :goto_1

    :cond_8
    move-object v1, v0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v0

    sget-object v4, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/h;

    if-eqz v0, :cond_a

    invoke-interface {p0}, Lcom/estrongs/fs/g;->shouldTryLoadThumbnail()Z

    move-result v4

    if-eqz v4, :cond_a

    :try_start_2
    invoke-interface {v0, p0}, Lcom/estrongs/android/d/h;->a(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :goto_2
    if-nez v1, :cond_a

    invoke-interface {p0, v2}, Lcom/estrongs/fs/g;->setShouldTryLoadThumbnail(Z)V

    :cond_a
    move-object v0, v1

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_b
    :goto_3
    move-object v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v4, "IconManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to generate thumbnail for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_b

    array-length v1, p2

    if-lez v1, :cond_b

    aput-boolean v3, p2, v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    sget-object v0, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/estrongs/android/d/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    sget-object v2, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    iget-object v0, v0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    sget-object v0, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/al;->g(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/d/d;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/estrongs/android/d/d;->a(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/d/d;
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/d/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    :cond_0
    sget-object v0, Lcom/estrongs/android/d/d;->b:Lcom/estrongs/android/d/d;

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/d/g;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/estrongs/android/d/g;->b:I

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/d/h;)V
    .locals 5

    invoke-interface {p0}, Lcom/estrongs/android/d/h;->d()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/d/g;

    invoke-direct {v0}, Lcom/estrongs/android/d/g;-><init>()V

    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/estrongs/android/d/g;->b:I

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object v1, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/estrongs/android/d/d;->d:Z

    return-void
.end method

.method public static a(Lcom/estrongs/fs/g;)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/estrongs/android/d/d;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/d/d;->i(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method private static b(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0200a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/av;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f02009e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/av;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f02009d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/av;->h(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0200a3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/av;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0200a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/d/g;->b:I

    invoke-static {}, Lcom/estrongs/android/d/d;->d()V

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/fs/g;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v0

    sget-object v1, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/estrongs/android/d/h;->g(Lcom/estrongs/fs/g;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    const/4 v3, 0x0

    iput v3, v0, Lcom/estrongs/android/d/g;->b:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static c(Lcom/estrongs/fs/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/av;->b(Lcom/estrongs/fs/g;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/d/d;->k:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v1

    const v2, 0x10016

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/d/d;->j(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static d()V
    .locals 7

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/d/g;

    iget v1, v1, Lcom/estrongs/android/d/g;->b:I

    if-gtz v1, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/d/d;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/g;

    :try_start_0
    sget-object v1, Lcom/estrongs/android/d/d;->i:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/d/g;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    move v5, v4

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v5, v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/estrongs/fs/g;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/d/d;->i(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "210_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g(Lcom/estrongs/fs/g;)I
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02009b

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/d/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->b(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0200a5

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static h(Lcom/estrongs/fs/g;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/d/d;->i(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public static i(Lcom/estrongs/fs/g;)Z
    .locals 1

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Lcom/estrongs/fs/g;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/util/av;->a(Lcom/estrongs/fs/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/d/d;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/d/d;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/d/d;->e:Ljava/util/HashMap;

    const-string v2, "-1"

    const v3, 0x7f0200a5

    invoke-direct {p0, v3}, Lcom/estrongs/android/d/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
