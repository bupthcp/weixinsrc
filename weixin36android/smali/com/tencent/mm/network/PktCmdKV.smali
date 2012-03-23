.class Lcom/tencent/mm/network/PktCmdKV;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    invoke-direct {v2, v5, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x1a

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    invoke-direct {v2, v6, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    invoke-direct {v2, v7, v5, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    invoke-direct {v2, v8, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v5, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x1f

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x20

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x22

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x23

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x24

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x25

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x26

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x27

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x28

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x29

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2b

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x30

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x31

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x32

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x33

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x34

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x35

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x36

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x37

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x38

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x39

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x3b

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x3c

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x47

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x3f

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x41

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x3e

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x51

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    const/16 v3, 0x54

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/network/PktCmdKV;->a:I

    iput-boolean p2, p0, Lcom/tencent/mm/network/PktCmdKV;->b:Z

    iput-boolean p3, p0, Lcom/tencent/mm/network/PktCmdKV;->c:Z

    return-void
.end method

.method public static a(IZLcom/tencent/mm/protocal/IMMBaseReq_AIDL;)Lcom/tencent/mm/network/PktCmdKV;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/mm/network/PktCmdKV;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/PktCmdKV;

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->l()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/tencent/mm/network/PktCmdKV;

    invoke-interface {p2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->l()I

    move-result v3

    invoke-interface {p2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    move-object v0, v2

    :cond_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/network/PktCmdKV;

    invoke-direct {v0, v1, v1, p1}, Lcom/tencent/mm/network/PktCmdKV;-><init>(IZZ)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean p1, v0, Lcom/tencent/mm/network/PktCmdKV;->c:Z

    goto :goto_1
.end method
