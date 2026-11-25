.class public Lcom/google/android/gms/b/gf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/gj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/gj",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/b/io;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/gf;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/gg;

    invoke-direct {v0}, Lcom/google/android/gms/b/gg;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/gf;->a:Lcom/google/android/gms/b/gj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/b/gf;->a(Landroid/content/Context;)Lcom/google/android/gms/b/io;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/io;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/b/io;
    .locals 2

    sget-object v1, Lcom/google/android/gms/b/gf;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/io;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/b/io;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/io;

    :cond_0
    sget-object v0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/io;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/b/gr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/b/gr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/b/gk;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/b/gk;-><init>(Lcom/google/android/gms/b/gf;Lcom/google/android/gms/b/gg;)V

    new-instance v4, Lcom/google/android/gms/b/gh;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/b/gh;-><init>(Lcom/google/android/gms/b/gf;Ljava/lang/String;Lcom/google/android/gms/b/gk;)V

    new-instance v0, Lcom/google/android/gms/b/gi;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/gi;-><init>(Lcom/google/android/gms/b/gf;Ljava/lang/String;Lcom/google/android/gms/b/kb;Lcom/google/android/gms/b/ka;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/io;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/io;->a(Lcom/google/android/gms/b/hr;)Lcom/google/android/gms/b/hr;

    return-object v3
.end method
