.class Lorg/cocos2dx/lib/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[Ljava/lang/String;


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lorg/cocos2dx/lib/c;->a:I

    .line 195
    iput p2, p0, Lorg/cocos2dx/lib/c;->c:I

    .line 196
    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lorg/cocos2dx/lib/c;->b:I

    .line 197
    iput-object p3, p0, Lorg/cocos2dx/lib/c;->d:[Ljava/lang/String;

    .line 198
    return-void
.end method
