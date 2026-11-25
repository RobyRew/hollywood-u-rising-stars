.class public final Lcom/google/android/gms/games/j;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:Z

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/j;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/j;->b:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/j;->c:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/j;->d:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/j;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/j;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/j;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/j;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/games/i;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/i;-><init>(Lcom/google/android/gms/games/j;Lcom/google/android/gms/games/d;)V

    return-object v0
.end method

.method public a(ZI)Lcom/google/android/gms/games/j;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/j;->b:Z

    iput p2, p0, Lcom/google/android/gms/games/j;->c:I

    return-object p0
.end method
