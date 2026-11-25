.class public Lcom/google/android/gms/b/mh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/b/mi;

.field public static final b:Lcom/google/android/gms/b/mj;

.field public static final c:Lcom/google/android/gms/b/ml;

.field public static final d:Lcom/google/android/gms/b/mk;

.field public static final e:Lcom/google/android/gms/b/mn;

.field public static final f:Lcom/google/android/gms/b/mm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/b/mi;

    const-string/jumbo v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/mi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->a:Lcom/google/android/gms/b/mi;

    new-instance v0, Lcom/google/android/gms/b/mj;

    const-string/jumbo v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/mj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->b:Lcom/google/android/gms/b/mj;

    new-instance v0, Lcom/google/android/gms/b/ml;

    const-string/jumbo v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/ml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->c:Lcom/google/android/gms/b/ml;

    new-instance v0, Lcom/google/android/gms/b/mk;

    const-string/jumbo v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/mk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->d:Lcom/google/android/gms/b/mk;

    new-instance v0, Lcom/google/android/gms/b/mn;

    const-string/jumbo v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/mn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->e:Lcom/google/android/gms/b/mn;

    new-instance v0, Lcom/google/android/gms/b/mm;

    const-string/jumbo v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/mm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/mh;->f:Lcom/google/android/gms/b/mm;

    return-void
.end method
