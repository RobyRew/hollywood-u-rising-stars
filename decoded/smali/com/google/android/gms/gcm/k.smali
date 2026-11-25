.class public Lcom/google/android/gms/gcm/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/gcm/k;

.field public static final b:Lcom/google/android/gms/gcm/k;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/google/android/gms/gcm/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/k;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/k;->a:Lcom/google/android/gms/gcm/k;

    new-instance v0, Lcom/google/android/gms/gcm/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/k;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/k;->b:Lcom/google/android/gms/gcm/k;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/k;->c:I

    iput p2, p0, Lcom/google/android/gms/gcm/k;->d:I

    iput p3, p0, Lcom/google/android/gms/gcm/k;->e:I

    return-void
.end method
